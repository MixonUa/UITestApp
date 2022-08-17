//
//  CleanerMenuButton.swift
//  UITestApp
//
//  Created by Михаил Фролов on 16.08.2022.
//

import Foundation
import UIKit

struct CleanerMenuButtonViewModel {
    let title: String
    let imageName: String
}

class CleanerMenuButton: UIButton {
    private let buttonImageView = UIImageView()
    private let buttonLabel = UILabel()
    
    init(with viewModel: CleanerMenuButtonViewModel) {
        super.init(frame: .zero)
        
        configure(with: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(with viewModel: CleanerMenuButtonViewModel) {
        buttonImageView.image = UIImage(named: viewModel.imageName)
        buttonImageView.contentMode = .scaleAspectFit
        addSubview(buttonImageView)
        buttonLabel.text = viewModel.title
        buttonLabel.numberOfLines = 0
        buttonLabel.lineBreakMode = .byWordWrapping
        buttonLabel.textAlignment = .center
        buttonLabel.textColor = UIColor(red: 0.294, green: 0.314, blue: 0.675, alpha: 1)
        buttonLabel.font = UIFont(name: "Roboto-Regular", size: 13)
        addSubview(buttonLabel)
    }
        
    override func layoutSubviews() {
        super .layoutSubviews()
        buttonImageView.frame = CGRect(x: 34, y: 12, width: 42, height: 44)
        buttonLabel.frame = CGRect(x: 27, y: 63, width: 57, height: 40)
        layer.cornerRadius = frame.width/2
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 4)
    }
}
