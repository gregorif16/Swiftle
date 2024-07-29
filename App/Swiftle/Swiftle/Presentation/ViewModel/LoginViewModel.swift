//
//  LoginViewModel.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    
    private var loginUseCase: LoginUseCaseProtocol
    
    init(loginUseCase: LoginUseCaseProtocol = LoginUseCaseFake()) {
        self.loginUseCase = loginUseCase
    }
    
    func login() async {
        let success = await loginUseCase.loginApp(user: username, password: password)
        DispatchQueue.main.async {
            self.isLoggedIn = success
        }
    }
    
    func logout() async {
        await loginUseCase.logout()
        DispatchQueue.main.async {
            self.isLoggedIn = false
        }
    }
    
    func validateToken() async -> Bool {
        return await loginUseCase.validateToken()
    }
}
