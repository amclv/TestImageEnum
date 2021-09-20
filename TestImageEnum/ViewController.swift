//
//  ViewController.swift
//  TestImageEnum
//
//  Created by Aaron Cleveland on 9/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var testImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = .customImage(.testImage)
        image.contentMode = .scaleAspectFit
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        view.addSubview(testImage)
        NSLayoutConstraint.activate([
            testImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            testImage.heightAnchor.constraint(equalToConstant: 100),
            testImage.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

