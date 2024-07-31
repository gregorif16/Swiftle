//
//  MembershipScreen.swift
//  Swiftle
//
//  Created by Gregori Farias on 30/7/24.
//

import SwiftUI

struct MembershipScreen: View {
    var body: some View {
        ZStack {
            GeneralBackGround()
                .opacity(0.9)
            
            VStack(spacing: 32) {
                ZStack {
                    Image("normalLogo")
                        .resizable()
                        .frame(width: 136, height: 104)
                        .padding(.bottom, 7)
                } .frame(width: 340, height: 110)
                    .background(Color("backgroundColor"))
                    .cornerRadius(22)
                Text("Seleccione una membresia")
                    .foregroundStyle(.white)
                MembershipButton(image: "normalLogo", number: 2, title: "Normal", price: "0.00", characteristics: ["Solo cuatro palabras por dia", "Anuncios publicitarios."], action: {})
                
                MembershipButton(image: "mediumLogo", number: 2, title: "Medium", price: "7.99", characteristics: ["Sin anuncios publicitarios.", "Palabras extras de regalo."], action: {})
                
                MembershipButton(image: "premiumLogo", number: 2, title: "Premium", price: "9.99", characteristics: ["Sin anuncios publicitarios", "10 palabras por dia", "Palabras extras de regalo."], action: {})
                RegularButton(title: "Continuar", action: {})
               
            }
        }
    }
}

#Preview {
    MembershipScreen()
}
