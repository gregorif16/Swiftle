//
//  CalendarView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                Image("normalLogo")
                    .font(.system(size: 28))
                    .bold()
                    .foregroundStyle(.white)
                HStack {
                    mainScreenButton(number: 4)
                    mainScreenButton(number: 5)
                    mainScreenButton(number: 6)
                    mainScreenButton(number: 7)
                }
                
                Image("calendar")
                
            } .padding(.top, -100)
        }
    }
    struct mainScreenButton: View {
        var number: Int
        var action: () -> Void = {}
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
                    Text("\(number) Letras")
                        .foregroundStyle(.black)
                        .font(.system(size: 18))
                        .bold()
                } .frame(width: 80, height: 40)
                    .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
            }
        }
    }
}
#Preview {
    CalendarView()
}
