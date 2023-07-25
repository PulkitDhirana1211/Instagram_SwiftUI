//
//  RegistrationViewModel.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 20/07/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password  = ""

    func registerUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
}
