//
//  Post.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 17/07/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some caption text for now",
              likes: 123,
              imageUrl: "batman2",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Pink Panther Show",
              likes: 104,
              imageUrl: "pinkpanther",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Superman Show",
              likes: 167,
              imageUrl: "superman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 567,
              imageUrl: "venom",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "NYC is safe",
              likes: 200,
              imageUrl: "spiderman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]
             ),

    ]
}
