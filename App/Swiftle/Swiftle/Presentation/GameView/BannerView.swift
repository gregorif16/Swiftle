//
//  BannerView.swift
//  Swiftle
//
//  Created by David Ortega Iglesias on 17/7/24.
//

import SwiftUI
import AVKit

class SoundManager {
    static let intance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundFile: String {
        case win
        case fail
    }
    
    func playSound(sound: SoundFile) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: "mp3") else {return}
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error)
        }
    }
}

struct BannerView: View {
	private let bannerType: BannerType
	@State private var isOnScreen: Bool = false
	
	init(bannerType: BannerType) {
		self.bannerType = bannerType
	}
	
    var body: some View {
		VStack {
			Spacer()
			switch bannerType {
			case .error(let errorMessage):
				Text(errorMessage)
					.foregroundColor(.white)
					.padding()
					.background(.red)
					.cornerRadius(12)
                    .onAppear {
                        SoundManager.intance.playSound(sound: .fail)
                    }
			case .success:
				Text("¡HAS GANADO!")
					.foregroundColor(.white)
					.padding()
					.background(.blue)
					.cornerRadius(12)
                    .onAppear {
                        SoundManager.intance.playSound(sound: .win)
                    }
			}
			Spacer()
		}
		.padding(.horizontal, 12)
		.frame(height: 40)
		.animation(.easeInOut(duration: 0.3), value: isOnScreen)
		.offset(y: isOnScreen ? -350 : -500)
		.onAppear {
			isOnScreen = true
		}
    }
}

#Preview {
	BannerView(bannerType: .success)
}
