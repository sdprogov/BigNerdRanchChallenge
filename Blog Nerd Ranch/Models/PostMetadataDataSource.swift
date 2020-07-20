//
//  PostMetadataDataSource.swift
//  Blog Nerd Ranch
//
//  Created by Chris Downie on 9/3/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

import Foundation

/// Group & sort posts based on the given ordering.
struct PostMetadataDataSource {
    /// Represents a named group of posts. The nature of the group depends on the ordering it was created with
    private struct Group {
        let name: String?
        var postMetadata: [PostMetadata]
    }
    
    var ordering: DisplayOrdering {
        didSet {
            createGroups()
        }
    }
    var postMetadataList: [PostMetadata] {
        didSet {
            createGroups()
        }
    }
    
    private var groups: [Group] = []
    
    init(ordering: DisplayOrdering, postMetadata: [PostMetadata] = []) {
        self.ordering = ordering
        self.postMetadataList = postMetadata
        createGroups()
    }
    
    private mutating func createGroups() {
        switch ordering.grouping {
        case .none:
            groups = [Group(name: nil, postMetadata: postMetadataList)]
        case .author:
            groups = Dictionary(grouping: postMetadataList, by: { $0.author.name }).map { Group(name: $0.key, postMetadata: applySorting(postMetadata: $0.value)) }
        case .month:
            groups = Dictionary(grouping: postMetadataList, by: { $0.month }).map { Group(name: $0.key, postMetadata: applySorting(postMetadata: $0.value)) }
        }
        
        print("\(groups)")
    }
    
    // MARK: UICollectionViewDataSource convenience
    
    func numberOfSections() -> Int {
        return groups.count
    }
    
    func titleForSection(_ section: Int) -> String? {
        return groups[section].name
    }
    
    func numberOfPostsInSection(_ section: Int) -> Int {
        return groups[section].postMetadata.count
    }
    
    func postMetadata(at indexPath: IndexPath) -> PostMetadata {
        return groups[indexPath.section].postMetadata[indexPath.row]
    }
  
    // MARK: Sorting
    private func applySorting(postMetadata: [PostMetadata]) -> [PostMetadata] {
        
        switch ordering.sorting {
        case .alphabeticalByAuthor(ascending: true):
            return postMetadata.sorted { $0.author.name.lowercased() < $1.author.name.lowercased() }
        case .alphabeticalByAuthor(ascending: false):
            return postMetadata.sorted { $0.author.name.lowercased() > $1.author.name.lowercased() }
        case .alphabeticalByTitle(ascending: true):
            return postMetadata.sorted { $0.title.lowercased() < $1.title.lowercased() }
        case .alphabeticalByTitle(ascending: false):
            return postMetadata.sorted { $0.title.lowercased() > $1.title.lowercased() }
        case .byPublishDate(recentFirst: true):
            return postMetadata.sorted { $0.publishDate < $1.publishDate }
        case .byPublishDate(recentFirst: false):
            return postMetadata.sorted { $0.publishDate > $1.publishDate }
        }
    }
    
}
