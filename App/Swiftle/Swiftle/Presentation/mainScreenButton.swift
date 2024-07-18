//
//  mainScreenButton.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//
import SwiftUI

struct mainScreenButton: View {
    var number: Int
    var title: String
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorYellow"), Color("ColorYellow2"),
                        Color("ColorYellow")]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .cornerRadius(14)
                Text(title)
                    .foregroundStyle(.black)
                    .font(.system(size: 22))
                    .bold()
                HStack {
                    smallSquare
                        .padding(.horizontal, 10)
                    Spacer()
                }
                
            } .frame(width: 340, height: 65)
                .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
        }
    }
    
    
    var smallSquare: some View {
        
        return ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorYellow"), Color("ColorYellow2"),
                    Color("ColorYellow")]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
            .cornerRadius(14)
                Text(String(number))
                    .foregroundStyle(.black)
                    .font(.system(size: 22))
                    .bold()
            
            
        } .frame(width: 50, height: 50)
            .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
    }
}

#Preview {
    mainScreenButton(number: 1, title: "Letras", action: {})
}
