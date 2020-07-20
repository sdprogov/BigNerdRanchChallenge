//
//  PostMetadata.swift
//  Blog Nerd Ranch
//
//  Created by Chris Downie on 8/28/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct PostMetadata: Codable {
    let title: String
    let publishDate: Date
    let postId: String
    let author: Author
    let summary: String
}

extension PostMetadata {
    var month: String {
        if let month = publishDate.get(.month).month {
            return Calendar.current.monthSymbols[month-1]
        }
        return ""
    }
}
