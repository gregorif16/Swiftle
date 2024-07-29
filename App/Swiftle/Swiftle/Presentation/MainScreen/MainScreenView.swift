//
//  MainScreenView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        ZStack {
            GeneralBackGround()
            
            VStack(spacing: 32) {
                Image("iconNoTitle")
                    .padding(.top, 68)
                
                mainScreenButton(number: 4, title: "Letras", action: {
                    // Action for button 4
                })
                mainScreenButton(number: 5, title: "Letras", action: {
                    // Action for button 4
                })
                
                mainScreenButton(number: 6, title: "Letras", action: {
                    // Action for button 6
                })
                mainScreenButton(number: 7, title: "Letras", action: {
                    // Action for button 7
                })
            }
        }
    }

}

#Preview {
    MainScreenView()
}
