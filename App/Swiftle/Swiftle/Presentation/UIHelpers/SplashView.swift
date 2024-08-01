//
//  SplashView.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
                triangleEdited
                .offset(y: 260)
            Image("normalLogo")
                .offset(y: -60)
        }
    }
    var triangleEdited: some View {
        VStack {
            Triangle()
                .fill(Color("circleColor"))
                .blur(radius: 10.0)
                .shadow(radius: 18)
                .opacity(0.06)
                .frame(width: 550)
        }
    }
    
    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: CGPoint(x: rect.midX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            }
        }
    }

}

#Preview {
    SplashView()
}
