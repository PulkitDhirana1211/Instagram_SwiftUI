//
//  User.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 15/07/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {
            return false }
        return currentUid == id
    }
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne",
              bio: "Gotham City", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: nil, fullname: "Eddie Brock",
              bio: "Brooklyn", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "superman", profileImageUrl: nil, fullname: "Henry Cavill",
              bio: "Metropolis City", email: "superman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "pinkpanther", profileImageUrl: nil, fullname: nil,
              bio: "Pink City", email: "pinkpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: nil, fullname: "Peter Parker",
              bio: "NYC", email: "spiderman@gmail.com")
    ]
}
