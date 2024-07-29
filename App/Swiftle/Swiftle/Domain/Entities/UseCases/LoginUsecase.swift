//
//  LoginUsecase.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import Foundation


protocol LoginUseCaseProtocol {
    var repo: LoginRepositoryProtocol { get set }
    func loginApp(user: String, password: String) async -> Bool
    func logout() async -> Void
    func validateToken() async -> Bool
}

final class LoginUseCase: LoginUseCaseProtocol {
    var repo: LoginRepositoryProtocol
    
    init(repo: LoginRepositoryProtocol = DefaultLoginRespository(Network: NetworkLogin())) {
        self.repo = repo
    }
    
    func loginApp(user: String, password: String) async -> Bool {
        let token = await repo.loginApp(user: user, password: password)
        return !token.isEmpty
    }
  
    func logout() async {
    }
    
    func validateToken() async -> Bool {
        return true
    }
}



final class LoginUseCaseFake: LoginUseCaseProtocol {
    var repo: LoginRepositoryProtocol
    
    init(repo: LoginRepositoryProtocol = DefaultLoginRespositoryFake()) {
        self.repo = repo
    }
    
    func loginApp(user: String, password: String) async -> Bool {
        let token = await repo.loginApp(user: user, password: password)
        return !token.isEmpty
    }
    
    func logout() async {
    }
    
    func validateToken() async -> Bool {
        return true
    }
}
