//
//  FeedViewModel.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 25/07/23.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchfeedPosts()
        
    }
}
