////  Author.swift
//  Blog Nerd Ranch
//
//  Created on 7/18/20.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct Author: Codable {
    let name: String
    let partialUrl: String
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case name, title, partialUrl = "image"
    }
}
