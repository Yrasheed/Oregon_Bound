//
//  FaithsFuelViewController.swift
//  OregonBound
//
//  Created by Yasoob  Rasheed on 8/10/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class FaithsFuelViewController: UIViewController {
    
    @IBOutlet weak var faithsFuelContinueButton: UIButton!
    @IBOutlet weak var faithsFuelTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        faithsFuelContinueButton.layer.borderColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [0.0, 0.0, 0.0, 1.0])
        faithsFuelContinueButton.layer.borderWidth = CGFloat(1.5)
        faithsFuelContinueButton.layer.cornerRadius = CGFloat(15)
    }

    @IBAction func continueButtonTapped(sender: UIButton) {
        faithsFuelTextView.text = "There's only one thing you can get here. Fuel! Fuel keeps that car of yours driving. Without it... well... you can't drive!"
        faithsFuelContinueButton.removeFromSuperview()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
