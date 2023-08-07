//
//  SecondViewController.swift
//  AboutMeApp
//
//  Created by Alexey on 07.08.2023.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet var greatingLabel: UILabel!
    
    var greetingValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientBackground()
        greatingLabel.text = greetingValue
    }
    

    @IBAction func logoutButtonTapped() {
        
    }
    
    private func addGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.cyan.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
