//
//  ViewController.swift
//  TrafficLight
//
//  Created by Борис Сонин on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.5
        yellowLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        
        
        redLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        greenLightView.layer.cornerRadius = 75
        
        
    }
    @IBAction func switchButtonTapped() {
        switchButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 0.5 {
            redLightView.alpha = 1
            
        } else if redLightView.alpha == 1 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 0.5 {
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
            
        } else if redLightView.alpha == 0.5 && yellowLightView.alpha == 1 && greenLightView.alpha == 0.5 {
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
            
        } else if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 1 {
            greenLightView.alpha = 0.5
            
        }
        
    }
}
