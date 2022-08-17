//
//  SpeedTestViewController.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import UIKit

class SpeedTestViewController: UIViewController {
    @IBOutlet weak var topContentView: UIView!
    @IBOutlet weak var bottomContentView: UIView!
    
    private let backgroundView = GradientBackground()
    private let titleLabel = TitleImageLabel(imageName: "speed")
    private let tracedImageView = UIImageView()
    private let speedometerImageView = UIImageView()
    private let actionButton = SpeedActionButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAllViews()
    }
    
    private func addAllViews() {
        addBackgroundView()
        addTracedImage()
        addTitleLabel()
        addSpeedometerImageView()
        addActionButton()
    }

    private func addBackgroundView() {
        view.insertSubview(backgroundView, at: 0)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func addTracedImage() {
        tracedImageView.image = UIImage(named: "traced")
        backgroundView.addSubview(tracedImageView)
        
        tracedImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tracedImageView.topAnchor.constraint(equalTo: backgroundView.topAnchor),
            tracedImageView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            tracedImageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            tracedImageView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor)
        ])
    }
    
    private func addTitleLabel() {
        titleLabel.setTitle(title: "SPEED TEST")
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLabel.heightAnchor.constraint(equalToConstant: 25),
            titleLabel.widthAnchor.constraint(equalToConstant: 108)
        ])
    }
    
    private func addSpeedometerImageView() {
        speedometerImageView.image = UIImage(named: "speedometer")
        speedometerImageView.contentMode = .scaleAspectFill
        topContentView.addSubview(speedometerImageView)
        
        speedometerImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            speedometerImageView.topAnchor.constraint(equalTo: topContentView.topAnchor),
            speedometerImageView.bottomAnchor.constraint(equalTo: topContentView.bottomAnchor),
            speedometerImageView.leadingAnchor.constraint(equalTo: topContentView.leadingAnchor),
            speedometerImageView.trailingAnchor.constraint(equalTo: topContentView.trailingAnchor)
        ])
    }
    
    private func addActionButton() {
        actionButton.backgroundColor = .white
        actionButton.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
        topContentView.addSubview(actionButton)
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButton.topAnchor.constraint(equalTo: topContentView.topAnchor, constant: 60),
            actionButton.centerXAnchor.constraint(equalTo: topContentView.centerXAnchor) ,
            actionButton.heightAnchor.constraint(equalToConstant: 167),
            actionButton.widthAnchor.constraint(equalToConstant: 167)
        ])
    }
    
    @objc private func actionButtonPressed() {
        if actionButton.isStartPressed == false {
            actionButton.setStopImage()
        } else if actionButton.isStartPressed == true {
            actionButton.setStartImage()
        }
    }
}
