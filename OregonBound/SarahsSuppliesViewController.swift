//
//  SarahsSuppliesViewController.swift
//  OregonBound
//
//  Created by Yasoob  Rasheed on 8/10/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class SarahsSuppliesViewController: UIViewController {

    @IBOutlet weak var sarahsSuppliesTextView: UITextView!
    @IBOutlet weak var sarahsSuppliesContinueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sarahsSuppliesContinueButton.layer.borderColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [0.0, 0.0, 0.0, 1.0])
        sarahsSuppliesContinueButton.layer.borderWidth = CGFloat(1.5)
        sarahsSuppliesContinueButton.layer.cornerRadius = CGFloat(15)
    }

    @IBAction func continueButtonTapped(sender: UIButton) {
        sarahsSuppliesTextView.text = "Here you can choose between food and clothes. You need food to ward off disease and keep your travelers happy. Clothes also ward off disease by keeping your travelers warm."
        sarahsSuppliesContinueButton.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
