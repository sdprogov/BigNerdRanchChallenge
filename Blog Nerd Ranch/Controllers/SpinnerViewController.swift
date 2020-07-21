////  SpinnerViewController.swift
//  Blog Nerd Ranch
//
//  Created on 7/20/20.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import UIKit

class SpinnerViewController: UIViewController {
    private var spinner = UIActivityIndicatorView(style: .large)

    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.7)
        
        spinner.color = .white

        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.startAnimating()
        view.addSubview(spinner)

        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
