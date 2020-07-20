////  DateExtensions.swift
//  Blog Nerd Ranch
//
//  Created on 7/20/20.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import Foundation

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }
}
