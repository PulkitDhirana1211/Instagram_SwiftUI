//
//  ContentViewModel.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 19/07/23.
//

import Foundation
import FirebaseAuth
import Combine

@MainActor
class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            //DispatchQueue.main.async {
                self?.userSession = userSession
            //}
        }
        .store(in: &cancellables)
        
        service.$currentUser.sink { [weak self] currentUser in
            //DispatchQueue.main.async {
                self?.currentUser = currentUser
            //}
        }
        .store(in: &cancellables)

    }
}
