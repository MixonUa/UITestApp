//
//  SpeedActionButton.swift
//  UITestApp
//
//  Created by Михаил Фролов on 16.08.2022.
//

import Foundation
import UIKit

class SpeedActionButton: UIButton {
    private let buttonImageView = UIImageView()
    var isStartPressed = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        setStartImage()
        buttonImageView.contentMode = .scaleAspectFit
        addSubview(buttonImageView)
        buttonImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonImageView.topAnchor.constraint(equalTo: topAnchor, constant: 51),
            buttonImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 37),
            buttonImageView.leadingAnchor.constraint(equalTo: trailingAnchor, constant: 55),
            buttonImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 55)
        ])
    }
    
    func setStartImage() {
        buttonImageView.image = UIImage(named: "speed_start")
        isStartPressed = false
    }
    func setStopImage() {
        buttonImageView.image = UIImage(named: "speed_stop")
        isStartPressed = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonImageView.frame = CGRect(x: 55, y: 51, width: 57, height: 79)
        self.layer.cornerRadius = self.frame.width/2
    }
}
