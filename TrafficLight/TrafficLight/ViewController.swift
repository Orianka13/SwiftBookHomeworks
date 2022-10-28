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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

