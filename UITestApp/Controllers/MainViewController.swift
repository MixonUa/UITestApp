//
//  MainViewController.swift
//  UITestApp
//
//  Created by Михаил Фролов on 15.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var speedTestButton: UIButton!
    @IBOutlet weak var cleanerButton: UIButton!
    
    private let backgroundView = GradientBackground()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundView()
        configureButtons()
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
    
    private func configureButtons() {
        speedTestButton.layer.cornerRadius = 10
        cleanerButton.layer.cornerRadius = 10
    }
     
    @IBAction func speedTestButtonPressed(_ sender: Any) {
        guard let speedTestVC = storyboard?.instantiateViewController(identifier: "SpeedTestViewController") as? SpeedTestViewController else { return }
        self.present(speedTestVC, animated: true, completion: nil)
    }
    
    @IBAction func cleanerButtonPressed(_ sender: Any) {
            guard let cleanerVC = storyboard?.instantiateViewController(identifier: "CleanerViewController") as? CleanerViewController else { return }
            self.present(cleanerVC, animated: true, completion: nil)
    }
    
    @IBAction func backToMainVC (_ unwindSegue: UIStoryboardSegue) {
        guard let mainVC = unwindSegue.source as? MainViewController else { return }
    }
}
