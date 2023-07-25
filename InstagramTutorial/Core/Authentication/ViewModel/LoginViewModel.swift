//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 20/07/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
