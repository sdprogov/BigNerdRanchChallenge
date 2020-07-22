////  MockDataGenerator.swift
//  Blog Nerd RanchTests
//
//  Created on 7/20/20.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct MockData {
    
    static var generatePostMetaMock: [PostMetadata] {
        let author1 = Author(name: "John Doe", partialUrl: "", title: "")
        let author2 = Author(name: "Alex Joe", partialUrl: "", title: "")
        
        let post1 = PostMetadata(title: "Random", publishDate: Date(), postId: "1", author: author1, summary: "")
        let post2 = PostMetadata(title: "Cool", publishDate: Date(), postId: "2", author: author2, summary: "")
        let post3 = PostMetadata(title: "Really Cool", publishDate: Date(), postId: "", author: author2, summary: "")
        return [post1, post2, post3]
    }
}
