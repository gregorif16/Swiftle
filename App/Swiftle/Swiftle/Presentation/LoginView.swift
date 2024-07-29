//
//  LoginView.swift
//  Swiftle
//
//  Created by Gregori Farias on 17/7/24.
//
import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                GeneralBackGround()
                VStack {
                    Spacer()
                    
                    Image("normalLogo")
                        .padding(.bottom, 20)
                        .cornerRadius(75)
                    
                    VStack {
                        TextField("", text: $viewModel.username)
                            .frame(width: 300)
                            .padding()
                            .background(.clear)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color("ColorYellow"), lineWidth: 2)
                            )
                        
                        Text("Nombre de usuario")
                            .padding(.horizontal, 4)
                            .background(Color("backgroundColor"))
                            .cornerRadius(8)
                            .foregroundStyle(.white)
                            .offset(x: -70, y: -70)
                    }
                    
                    VStack {
                        SecureField("", text: $viewModel.password)
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
                    
                    NavigationLink(
                        destination: TabGeneralView(),
                        isActive: $viewModel.isLoggedIn,
                        label: {
                            Button(action: {
                                Task {
                                    await viewModel.login()
                                }
                            }) {
                                RegularButton(title: "Iniciar sesión", action: {})
                            }
                            .disabled(viewModel.username.isEmpty || viewModel.password.isEmpty)
                        }
                    )
                    
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
