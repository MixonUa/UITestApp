//
//  CleanerViewController.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import UIKit

class CleanerViewController: UIViewController {
    @IBOutlet weak var circleInformationView: UIView!
    @IBOutlet weak var buttonsBottomView: UIView!
    
    private let backgroundView = GradientBackground()
    private let titleLabel = TitleImageLabel(imageName: "cleaner")
    private let bubblesImageView = UIImageView()
    private let storageMenuButton = CleanerMenuButton(with: CleanerMenuButtonViewModel(title: "SECRET STORAGE", imageName: "storage"))
    private let photoMenuButton = CleanerMenuButton(with: CleanerMenuButtonViewModel(title: "ALL PHOTOS", imageName: "photo"))
    private let videoMenuButton = CleanerMenuButton(with: CleanerMenuButtonViewModel(title: "ALL VIDEOS", imageName: "video"))
    private let screenshotsInformationButton = CleanerInformationButton(with: CleanerInformationButtonViewModel(title: "Duplicate screenshots", imageName: "screenschot", objects: "12 files", duplicate: "2 duplicate"))
    private let photosInformationButton = CleanerInformationButton(with: CleanerInformationButtonViewModel(title: "Duplicate photos", imageName: "picture", objects: "120 files", duplicate: "20 duplicate"))
    private let contactsInformationButton = CleanerInformationButton(with: CleanerInformationButtonViewModel(title: "Duplicate contacts", imageName: "contact", objects: "30 contacts", duplicate: "7 duplicate"))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addAllViews()
        configureCircleInformationView()
    }
    
    private func configureCircleInformationView() {
        circleInformationView.layer.cornerRadius = circleInformationView.frame.width/2
        circleInformationView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.15).cgColor
        circleInformationView.layer.borderWidth = 1
        circleInformationView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    }
    
    private func addAllViews() {
        addBackgroundView()
        addBubblesImage()
        addTitleLabel()
        addVideoMenuButton()
        addPhotoMenuButton()
        addStorageMenuButton()
        addScreenshotsInformationButton()
        addPhotosInformationButton()
        addContactsInformationButton()
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
    
    private func addBubblesImage() {
        bubblesImageView.image = UIImage(named: "bubbles")
        bubblesImageView.contentMode = .scaleAspectFit
        backgroundView.addSubview(bubblesImageView)
        
        bubblesImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bubblesImageView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 171),
            bubblesImageView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            bubblesImageView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor)
        ])
    }
    
    private func addTitleLabel() {
        titleLabel.setTitle(title: "CLEANER")
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLabel.heightAnchor.constraint(equalToConstant: 25),
            titleLabel.widthAnchor.constraint(equalToConstant: 89)
        ])
    }
    
    private func addVideoMenuButton() {
        videoMenuButton.backgroundColor = .white
        buttonsBottomView.addSubview(videoMenuButton)
        
        videoMenuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            videoMenuButton.bottomAnchor.constraint(equalTo: buttonsBottomView.bottomAnchor, constant: -23),
            videoMenuButton.trailingAnchor.constraint(equalTo: buttonsBottomView.trailingAnchor, constant: -72),
            videoMenuButton.heightAnchor.constraint(equalToConstant: 111),
            videoMenuButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    private func addPhotoMenuButton() {
        photoMenuButton.backgroundColor = .white
        buttonsBottomView.addSubview(photoMenuButton)
        
        photoMenuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoMenuButton.bottomAnchor.constraint(equalTo: buttonsBottomView.bottomAnchor, constant: -23),
            photoMenuButton.trailingAnchor.constraint(equalTo: videoMenuButton.leadingAnchor, constant: -50),
            photoMenuButton.heightAnchor.constraint(equalToConstant: 111),
            photoMenuButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    private func addStorageMenuButton() {
        storageMenuButton.backgroundColor = .white
        buttonsBottomView.addSubview(storageMenuButton)
        
        storageMenuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            storageMenuButton.bottomAnchor.constraint(equalTo: photoMenuButton.topAnchor),
            storageMenuButton.centerXAnchor.constraint(equalTo: buttonsBottomView.centerXAnchor),
            storageMenuButton.heightAnchor.constraint(equalToConstant: 111),
            storageMenuButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    private func addScreenshotsInformationButton() {
        screenshotsInformationButton.backgroundColor = .white
        buttonsBottomView.addSubview(screenshotsInformationButton)
        
        screenshotsInformationButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            screenshotsInformationButton.bottomAnchor.constraint(equalTo: storageMenuButton.topAnchor, constant: -10),
            screenshotsInformationButton.centerXAnchor.constraint(equalTo: buttonsBottomView.centerXAnchor),
            screenshotsInformationButton.heightAnchor.constraint(equalToConstant: 111),
            screenshotsInformationButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    private func addPhotosInformationButton() {
        photosInformationButton.backgroundColor = .white
        buttonsBottomView.addSubview(photosInformationButton)
        
        photosInformationButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photosInformationButton.bottomAnchor.constraint(equalTo: buttonsBottomView.bottomAnchor, constant: -207),
            photosInformationButton.leadingAnchor.constraint(equalTo: buttonsBottomView.leadingAnchor, constant: 15),
            photosInformationButton.heightAnchor.constraint(equalToConstant: 111),
            photosInformationButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    private func addContactsInformationButton() {
        contactsInformationButton.backgroundColor = .white
        buttonsBottomView.addSubview(contactsInformationButton)
        
        contactsInformationButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactsInformationButton.bottomAnchor.constraint(equalTo: buttonsBottomView.bottomAnchor, constant: -207),
            contactsInformationButton.trailingAnchor.constraint(equalTo: buttonsBottomView.trailingAnchor, constant: -15),
            contactsInformationButton.heightAnchor.constraint(equalToConstant: 111),
            contactsInformationButton.widthAnchor.constraint(equalToConstant: 111)
        ])
    }
}
