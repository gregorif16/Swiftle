//
//  MembershipButton.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//

import SwiftUI

struct MembershipButton: View {
    var image: String
    var number: Int
    var title: String
    var price: String
    var characteristics: [String]
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
                
                HStack {
                    membershipPicture
                        .padding(.horizontal, 5)
                    
                    descriptions
                        .padding(.trailing, 5)
                        .padding(.leading, -8)
                    
                }
                
            } .frame(width: 340, height: 100)
                .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
        }
    }
    
    
    var membershipPicture: some View {
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
            Image(image)
                .resizable()
                .frame(width: 125, height: 85)
                .cornerRadius(14)
            
            
        } .frame(width: 130, height: 90)
            .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
    }
    
    var descriptions: some View {
        
        return VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.black)
                    .font(.system(size: 19))
                    .bold()
                Spacer()
                Text("$\(price)")
                    .foregroundStyle(.black)
                    .font(.system(size: 19))
                    .bold()
            }
            .padding(.top, -8)
            .padding(.bottom, -8)
            line
            
            
            VStack(alignment: .leading) {
                ForEach(characteristics, id: \.self) { characteristic in
                    Text("- \(characteristic)")
                        .padding(.vertical, -1)
                        .foregroundColor(.black)
                        .font(.system(size: 13))
                }
            }
        } .frame(width: 180, height: 70)
    }
    var line: some View {
        VStack {
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 180, y: 0))
            }
            .stroke(Color.black, lineWidth: 1)
            .frame( height: 1)
        }
    }
}


#Preview {
    MembershipButton(image: "normalLogo", number: 2, title: "Normal", price: "0.00", characteristics: ["Solo cuatro palabras por dia", "Anuncios publicitarios."], action: {})
}
