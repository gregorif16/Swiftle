//
//  RegularButton.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//

import SwiftUI

struct RegularButton: View {
    var title: String
    var action: () -> Void
    var body: some View {
        Button {
           action()
        } label: {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color("normalButtonColor1"), Color("normalButtonColor2")]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .cornerRadius(14)
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 22))
                    .bold()
                
            } .frame(width: 340, height: 55)
        }
    }
    
    var ButtonStyle: any View {
        return ZStack {
            
        }
    }
}

#Preview {
    RegularButton(title: "Continuar", action: {})
}
