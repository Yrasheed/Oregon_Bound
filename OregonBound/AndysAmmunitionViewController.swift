//
//  AndysAmmunitionViewController.swift
//  OregonBound
//
//  Created by Yasoob  Rasheed on 8/10/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class AndysAmmunitionViewController: UIViewController {

    @IBOutlet weak var andysAmmunitionContinueButton: UIButton!
    @IBOutlet weak var andysAmmunitionTextView: UITextView!
    @IBOutlet weak var quoteImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        andysAmmunitionContinueButton.layer.borderColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [0.0, 0.0, 0.0, 1.0])
        andysAmmunitionContinueButton.layer.borderWidth = CGFloat(1.5)
        andysAmmunitionContinueButton.layer.cornerRadius = CGFloat(15)
        quoteImageView.image = quoteImageView.image?.imageRotatedByBegrees(0, flip: true)
    }

    @IBAction func continueButtonTapped(sender: UIButton) {
        andysAmmunitionTextView.text = "Here you can choose between a rifle and rifle ammo. A rifle needs ammo and can break from overuse or misfortune."
        andysAmmunitionContinueButton.removeFromSuperview()
    }
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
