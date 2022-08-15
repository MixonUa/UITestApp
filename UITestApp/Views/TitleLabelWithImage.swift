//
//  TitleLabelWithImage.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import Foundation
import UIKit

class TitleLabelWithImage: UIView {
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
        addSubview(titleLabel)
    }
    
    func setTitle(title: String) {
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "Roboto-Medium", size: 14)
    }
}
