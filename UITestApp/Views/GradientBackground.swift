//
//  GradientBackground.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import Foundation
import UIKit

class GradientBackground: UIView {
    
    private let gradientLayer = CAGradientLayer()
    private let backgroundView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        layer.addSublayer(gradientLayer)
        translatesAutoresizingMaskIntoConstraints = false
        gradientLayer.colors = [
            UIColor(red: 0.451, green: 0.459, blue: 0.847, alpha: 1).cgColor,
            UIColor(red: 0.396, green: 0.42, blue: 0.733, alpha: 1).cgColor,
            UIColor(red: 0.286, green: 0.306, blue: 0.667, alpha: 1).cgColor
          ]

        addSubview(backgroundView)
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        

    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
