//
//  UserService.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 21/07/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {
        
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
     
    static func fetchAllUsers() async throws -> [User] {
//        var users = [User]()
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
        
//        let documents = snapshot.documents
        
//        for doc in documents {
//            guard let user = try? doc.data(as: User.self) else { return users }
//            users.append(user)
//        }
//
//        return users
        
    }
}
