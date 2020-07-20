//
//  PostMetadataCollectionViewCell.swift
//  Blog Nerd Ranch
//
//  Created by Chris Downie on 8/28/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

import UIKit

class PostMetadataCollectionViewCell: UICollectionViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var summaryLabel: UILabel!
    
    private static let dateFormatter: DateFormatter = {
        let toReturn = DateFormatter()
        toReturn.dateStyle = .medium
        return toReturn
    }()
    
    func populate(_ metaData: PostMetadata) {
        titleLabel.text = metaData.title
        authorLabel.text = metaData.author.name
        dateLabel.text = PostMetadataCollectionViewCell.dateFormatter.string(from: metaData.publishDate)
        summaryLabel.text = metaData.summary
    }
}
