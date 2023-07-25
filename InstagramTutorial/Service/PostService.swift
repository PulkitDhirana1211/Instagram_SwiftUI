//
//  PostService.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 25/07/23.
//

import Firebase

struct PostService {
    
    private static let postCollection = Firestore.firestore().collection("posts")
    
    static func fetchfeedPosts() async throws -> [Post] {
        let snapshot = try await postCollection.getDocuments()
        var posts = try snapshot.documents.compactMap({try $0.data(as: Post.self) })
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerId = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerId)
            posts[i].user = postUser
        }
        
        return posts
    }
    
    static func fetchUserPosts(uid: String) async throws -> [Post] {
        let snapshot = try await postCollection.whereField("ownerUid", isEqualTo: uid).getDocuments()
        return try snapshot.documents.compactMap({try $0.data(as: Post.self) })
    }
}
