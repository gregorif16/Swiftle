//
//  RankingView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct RankingView: View {
    var body: some View {
        ZStack {
            GeneralBackGround()
            VStack {
                HStack(spacing: -80) {
                    VStack(spacing: -25) {
                        Spacer()
                        Image("trophy")
                        PlaceHolderName(name: "Peter")
                    }
                    
                    VStack(spacing: -25) {
                        Image("trophy")
                            .resizable()
                            .frame(width: 250, height: 300)
                        PlaceHolderName(name: "Mary")
                        Image("normalLogo")
                            .resizable()
                            .frame(width: 100, height: 70)
                            .padding(.top, 28)
                    }
                    VStack(spacing: -25){
                        Spacer()
                        Image("trophy")
                        PlaceHolderName(name: "Michael")
                    }
                } .frame(height: 400)
                Spacer()
                Image("rankingTable")
                    .resizable()
                    .frame(width: 240, height: 290)
                    
            }
            
            
        }
    }
    
    struct PlaceHolderName: View {
        var name: String
        
        var body: some View {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorYellow"), Color("ColorYellow2"), Color("ColorYellow")]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .cornerRadius(14)
                
                Text(name)
                    .foregroundColor(.black)
                    .font(.system(size: 22))
                    .bold()
            }
            .frame(width: 90, height: 36)
            .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
        }
    }
}

#Preview {
    RankingView()
}
