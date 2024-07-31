//
//  MainScreenView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GeneralBackGround()
                
                VStack(spacing: 32) {
                    Image("iconNoTitle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(22)
                        .padding(.top, -150)
                        .shadow(radius: 28)
                    
                    mainScreenButton(number: 4, title: "Letras")
                    
                    NavigationLink(destination: ContentView()) {
                        mainScreenButton(number: 5, title: "Letras")
                    }
                    
                    mainScreenButton(number: 6, title: "Letras")
                    
                    mainScreenButton(number: 7, title: "Letras")
                }
            }
            .navigationBarHidden(true)
        }  .navigationBarHidden(true)
    }
}

#Preview {
    MainScreenView()
}
