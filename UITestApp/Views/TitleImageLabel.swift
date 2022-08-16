//
//  TitleImageLabel.swift
//  UITestApp
//
//  Created by Михаил Фролов on 16.08.2022.
//

import Foundation
import UIKit

class TitleImageLabel: UIView {
    private let titleLabel = UILabel()
    private let titleImageView = UIImageView()
    
    init(imageName: String) {
        super.init(frame: .zero)
        configure()
        titleImageView.image = UIImage(named: imageName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.addSubview(titleImageView)
        self.addSubview(titleLabel)
        titleImageView.contentMode = .scaleAspectFit
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleImageView.heightAnchor.constraint(equalToConstant: 25),
            titleImageView.widthAnchor.constraint(equalToConstant: 25)
        ])
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: titleImageView.trailingAnchor, constant: 3),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    func setTitle(title: String) {
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "Roboto-Medium", size: 14)
    }
}

