//
//  ViewController.swift
//  TrafficLight
//
//  Created by Олеся Егорова on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var widthConstraint: NSLayoutConstraint!
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
        
    @IBAction func changeLight() {
        if nextButton.titleLabel?.text == " START " {
            nextButton.setTitle(" NEXT ", for: .normal)
        }
        
        switch count {
        case 0:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            count += 1
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            count += 1
        default:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            count = 0
        }
    }
    
    private func setupViews() {
        
        view.backgroundColor = .black
        
        nextButton.layer.cornerRadius = 10
        
        widthConstraint.constant = UIScreen.main.bounds.width / 3
        heightConstraint.constant = widthConstraint.constant
        
        redLight.layer.cornerRadius = widthConstraint.constant / 2
        yellowLight.layer.cornerRadius = redLight.layer.cornerRadius
        greenLight.layer.cornerRadius = redLight.layer.cornerRadius
        
        redLight.alpha = 0.3
        yellowLight.alpha = redLight.alpha
        greenLight.alpha = redLight.alpha
    }
}

