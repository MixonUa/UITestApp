//
//  SpeedTestViewController.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import UIKit

class SpeedTestViewController: UIViewController {
    
    let backgroundView = GradientBackground()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundView()


    }
    

    private func addBackgroundView() {
        view.insertSubview(backgroundView, at: 0)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo:view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
