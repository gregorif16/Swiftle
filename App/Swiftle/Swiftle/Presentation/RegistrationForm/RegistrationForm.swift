//
//  RegistrationForm.swift
//  Swiftle
//
//  Created by Gregori Farias on 30/7/24.
//

import SwiftUI

struct RegistrationForm: View {
    var body: some View {
        @State var name: String = ""
        @State var password: String = ""
        ZStack {
            GeneralBackGround()
                .ignoresSafeArea()
            VStack {
                
                Image("normalLogo")
                    .padding(.bottom, 20)
                    .cornerRadius(75)
                VStack {
                    TextField("", text: $name)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("ColorYellow"), lineWidth: 2)
                        )
                    
                    Text("Nombre")
                        .padding(.horizontal, 4)
                        .background(Color("backgroundColor"))
                        .cornerRadius(8)
                        .foregroundStyle(.white)
                        .offset(x: -110, y: -70)
                }
                VStack {
                    TextField("", text: $name)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("ColorYellow"), lineWidth: 2)
                        )
                    
                    Text("Apellido")
                        .padding(.horizontal, 4)
                        .background(Color("backgroundColor"))
                        .cornerRadius(8)
                        .foregroundStyle(.white)
                        .offset(x: -110, y: -70)
                }
                VStack {
                    TextField("", text: $name)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("ColorYellow"), lineWidth: 2)
                        )
                    
                    Text("Usuario")
                        .padding(.horizontal, 4)
                        .background(Color("backgroundColor"))
                        .cornerRadius(8)
                        .foregroundStyle(.white)
                        .offset(x: -110, y: -70)
                }
                
                VStack {
                    SecureField("", text: $password)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .foregroundColor(.white)
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
                
                VStack {
                    SecureField("", text: $password)
                        .frame(width: 300)
                        .padding()
                        .background(.clear)
                        .foregroundColor(.white)
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
                
                RegularButton(title: "Crear cuenta", action: {})
                
                Button {} label: {
                    Text("Iniciar sesion")
                        .foregroundStyle(.white)
                        .padding(.top, 25)
                }
            }
            
        }
    }
    
}




#Preview {
    RegistrationForm()
}
