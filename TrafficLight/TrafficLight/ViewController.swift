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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 10
        
        setupLights()
    }
    
    private func setupLights(){
        
    }


}

