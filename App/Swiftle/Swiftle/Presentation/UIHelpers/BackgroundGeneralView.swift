//
//  BackgroundGeneralView.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//
import Foundation
import SwiftUI

struct GeneralBackGround: View {
    var body: some View {
        ZStack {
        Color("backgroundColor")
                .ignoresSafeArea()
        ellipse
                .frame(width: 260, height: 520)
                .rotationEffect(Angle(degrees: 120))
                .offset(x: 60, y: -350)
       
        ellipse
                .frame(width: 300, height: 600)
                .rotationEffect(Angle(degrees: 145))
                .offset(x: -60, y: 320)
        
        }
    }
    
    
    
    var ellipse: some View {
        VStack {
            Ellipse()
                .fill(Color("circleColor"))
                .blur(radius: 4.0)
                .shadow(radius: 18)
                .opacity(0.06)
        }
    }
}

#Preview {
    GeneralBackGround()
}


