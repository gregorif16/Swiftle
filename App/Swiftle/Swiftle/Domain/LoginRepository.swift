//
//  LoginRepository.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import Foundation

protocol LoginRepositoryProtocol {
    func loginApp(user: String, password: String) async -> String
}

final class DefaultLoginRespository: LoginRepositoryProtocol {
    private var Network: NetworkLoginProtocol
    
    init(Network: NetworkLoginProtocol) {
        self.Network = Network
    }
  
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}

//Fake
final class DefaultLoginRespositoryFake: LoginRepositoryProtocol {
    private var Network: NetworkLoginProtocol
    
    init(Network: NetworkLoginProtocol = NetworkLoginFake()) {
        self.Network = Network
    }
  
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}
