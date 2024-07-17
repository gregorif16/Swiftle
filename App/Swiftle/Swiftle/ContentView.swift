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
			VStack(spacing: 40) {
				GameView(viewModel: viewModel)
				KeyboardView(viewModel: viewModel)
			}
			if viewModel.bannerType != nil {
				BannerView(bannerType: viewModel.bannerType!)
			}
		}
    }
}

#Preview {
    ContentView()
}
