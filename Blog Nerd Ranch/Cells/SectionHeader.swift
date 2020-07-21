////  SectionHeader.swift
//  Blog Nerd Ranch
//
//  Created on 7/20/20.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import UIKit

class SectionHeader: UICollectionReusableView {
     var sectionHeaderLabel: UILabel = {
     let label: UILabel = UILabel()
     label.textColor = .black
     label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
     label.sizeToFit()
     return label
 }()

override init(frame: CGRect) {
     super.init(frame: frame)

     addSubview(sectionHeaderLabel)

     sectionHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
     sectionHeaderLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
     sectionHeaderLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
     sectionHeaderLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
}

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
