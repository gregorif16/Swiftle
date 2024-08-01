//
//  ContentView.swift
//  Swiftle
//
//  Created by David Ortega Iglesias on 17/7/24.
//

import SwiftUI

struct ContentView: View {
	@StateObject var viewModel = ViewModel()
	
    var body: some View {
        
		ZStack {
            GeneralBackGround()
			VStack(spacing: 40) {
                VStack(spacing: 10) {
                    HStack {
                        line
                        Image(.iconNoTitle)
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 70)
                            .cornerRadius(16)
                        line
                    }
                    GameView(viewModel: viewModel)
                }
                    KeyboardView(viewModel: viewModel)
                
			}
			if viewModel.bannerType != nil {
				BannerView(bannerType: viewModel.bannerType!)
			}
		}  
    }
    
    var line: some View {
        return  RoundedRectangle(cornerRadius: 8)
            .foregroundColor(Color("ColorYellow"))
            .frame(width: 120, height: 3)
    }
}

#Preview {
    ContentView()
}
