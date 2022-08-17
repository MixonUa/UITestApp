//
//  CleanerInformationButton.swift
//  UITestApp
//
//  Created by Михаил Фролов on 17.08.2022.
//

import Foundation
import UIKit

struct CleanerInformationButtonViewModel {
    let title: String
    let imageName: String
    let objects: String
    let duplicate: String
}

class CleanerInformationButton: UIButton {
    private let buttonBackgroundImageView = UIImageView()
    private let buttonMarkImageView = UIImageView()
    private let buttonImageView = UIImageView()
    private let buttonLabel = UILabel()
    private let objectsLabel = UILabel()
    private let duplicateLabel = UILabel()
    
    init(with viewModel: CleanerInformationButtonViewModel) {
        super.init(frame: .zero)
        
        configure(with: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(with viewModel: CleanerInformationButtonViewModel) {
        buttonBackgroundImageView.image = UIImage(named: "ellipse")
        addSubview(buttonBackgroundImageView)
        buttonBackgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonBackgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonBackgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonBackgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonBackgroundImageView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        buttonMarkImageView.image = UIImage(named: "mark")
        addSubview(buttonMarkImageView)
        buttonMarkImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonMarkImageView.topAnchor.constraint(equalTo: buttonBackgroundImageView.topAnchor),
            buttonMarkImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonMarkImageView.widthAnchor.constraint(equalToConstant: 12),
            buttonMarkImageView.heightAnchor.constraint(equalToConstant: 6.5)
        ])
        
        buttonLabel.text = viewModel.title
        buttonLabel.textAlignment = .center
        buttonLabel.textColor = UIColor(red: 0.294, green: 0.314, blue: 0.675, alpha: 1)
        buttonLabel.font = UIFont(name: "Roboto-Regular", size: 10)
        addSubview(buttonLabel)
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonLabel.bottomAnchor.constraint(equalTo: buttonMarkImageView.topAnchor, constant: -3),
            buttonLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonLabel.widthAnchor.constraint(equalToConstant: 105),
            buttonLabel.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        buttonImageView.image = UIImage(named: viewModel.imageName)
        addSubview(buttonImageView)
        buttonImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            buttonImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonImageView.widthAnchor.constraint(equalToConstant: 41),
            buttonImageView.heightAnchor.constraint(equalToConstant: 31.25)
        ])
        
        objectsLabel.text = viewModel.objects
        objectsLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        objectsLabel.font = UIFont(name: "Roboto-Medium", size: 13)
        addSubview(objectsLabel)
        objectsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            objectsLabel.topAnchor.constraint(equalTo: buttonMarkImageView.bottomAnchor, constant: 7.5),
            objectsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            objectsLabel.widthAnchor.constraint(equalToConstant: 43),
            objectsLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
        
        duplicateLabel.text = viewModel.duplicate
        duplicateLabel.textColor = UIColor(red: 0.246, green: 0.246, blue: 0.246, alpha: 1)
        duplicateLabel.font = UIFont(name: "Roboto-Regular", size: 8)
        addSubview(duplicateLabel)
        duplicateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            duplicateLabel.topAnchor.constraint(equalTo: objectsLabel.bottomAnchor, constant: 2),
            duplicateLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            duplicateLabel.widthAnchor.constraint(equalToConstant: 40),
            duplicateLabel.heightAnchor.constraint(equalToConstant: 9)
        ])
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        layer.cornerRadius = frame.width/2
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 4)
    }
}
