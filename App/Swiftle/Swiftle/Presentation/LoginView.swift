//
//  LoginView.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            GeneralBackGround()
            VStack {
                Spacer()
                
                Image("normalLogo")
                    .padding(.bottom, 20)
                    .cornerRadius(75)
                
                VStack {
                    TextField("", text: $username)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("ColorYellow"), lineWidth: 2)
                        )
                    
                    Text("Nomber de usuario")
                        .padding(.horizontal, 4)
                        .background(Color("backgroundColor"))
                        .cornerRadius(8)
                        .foregroundStyle(.white)
                        .offset(x: -70, y: -70)
                }
                
                VStack {
                    SecureField("", text: $password)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("ColorYellow"), lineWidth: 2)
                        )
                    
                    Text("Contraseña")
                        .padding(.horizontal, 4)
                        .background(Color("backgroundColor"))
                        .cornerRadius(8)
                        .foregroundStyle(.white)
                        .offset(x: -100, y: -70)
                }
                Button(action: {
                    print("Login button pressed with username: \(username) and password: \(password)")
                }) {
                    RegularButton(title: "Iniciar sesion", action: {})
                }
                
                Spacer()
                
                Button {} label: {
                    Text("Registrarse")
                        .foregroundStyle(.white)
                    
                }
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
