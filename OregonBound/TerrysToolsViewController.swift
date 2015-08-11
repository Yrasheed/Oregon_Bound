//
//  TerrysToolsViewController.swift
//  OregonBound
//
//  Created by Yasoob  Rasheed on 8/10/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class TerrysToolsViewController: UIViewController {

    @IBOutlet weak var terrysToolsTextView: UITextView!
    @IBOutlet weak var terrysToolsContinueButton: UIButton!
    @IBOutlet weak var toolKitTextField: UITextField!
    @IBOutlet weak var spareTireTextField: UITextField!
    @IBOutlet weak var spareEngineTextField: UITextField!
    @IBOutlet weak var checkOutButton: UIButton!
    @IBOutlet weak var currentBalanceLabel: UILabel!
    @IBOutlet weak var returnToTownButton: UIButton!
    
    func validateIntEntry(entry: String!) -> Int {
        if let value = Int(entry) {
            return value
        } else {
            return 0
        }
    }
    
    func addButtonBorder(button: UIButton) {
        button.layer.borderColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [0.0, 0.0, 0.0, 1.0])
        button.layer.borderWidth = CGFloat(1.5)
        button.layer.cornerRadius = CGFloat(15)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentBalanceLabel.text = String(format: "Current Balance: $%.2f", roadTripItems.money)
        toolKitTextField.text = "0"
        spareTireTextField.text = "0"
        spareEngineTextField.text = "0"
        addButtonBorder(returnToTownButton)
        addButtonBorder(checkOutButton)
        addButtonBorder(terrysToolsContinueButton)
    }

    @IBAction func upArrowButtonTapped(sender: UIButton) {
        if toolKitTextField.text != "20" {
        let textFieldText = validateIntEntry(toolKitTextField.text!)
        let incrementByOne = textFieldText + 1
        toolKitTextField.text = String(incrementByOne)
        print(toolKitTextField.text!)
        roadTripItems.tools.append("Foo")
        print(roadTripItems.tools)
        }
    }
    
    @IBAction func downArrowButtonTapped(sender: UIButton) {
        if toolKitTextField.text != "0" {
        let textFieldText = validateIntEntry(toolKitTextField.text!)
        let decrementByOne = textFieldText - 1
        toolKitTextField.text = String(decrementByOne)
        print(toolKitTextField!)
        roadTripItems.tools.removeAtIndex(0)
        print(roadTripItems.tools)
        }
    }
    @IBAction func upArrow2ButtonTapped(sender: UIButton) {
        if spareTireTextField.text != "20" {
            let textFieldText = validateIntEntry(spareTireTextField.text!)
            let incrementByOne = textFieldText + 1
            spareTireTextField.text = String(incrementByOne)
            print(spareTireTextField.text!)
            roadTripItems.spareTires.append("Foo")
            print(roadTripItems.spareTires)
        }
    }
    
    @IBAction func downArrow2ButtonTapped(sender: UIButton) {
        if spareTireTextField.text != "0" {
            let textFieldText = validateIntEntry(spareTireTextField.text!)
            let decrementByOne = textFieldText - 1
            spareTireTextField.text = String(decrementByOne)
            print(spareTireTextField.text!)
            roadTripItems.spareTires.removeAtIndex(0)
            print(roadTripItems.spareTires)
        }
    }
    
    @IBAction func upArrow3ButtonTapped(sender: UIButton) {
        if spareEngineTextField.text != "20" {
            let textFieldText = validateIntEntry(spareEngineTextField.text!)
            let incrementByOne = textFieldText + 1
            spareEngineTextField.text = String(incrementByOne)
            print(spareEngineTextField.text!)
            roadTripItems.backupEngines.append("Foo")
            print(roadTripItems.backupEngines)
        }
    }
   
    @IBAction func downArrow3ButtonTapped(sender: UIButton) {
        if spareEngineTextField.text != "0" {
            let textFieldText = validateIntEntry(spareEngineTextField.text!)
            let decrementByOne = textFieldText - 1
            spareEngineTextField.text = String(decrementByOne)
            print(spareEngineTextField.text!)
            roadTripItems.backupEngines.removeAtIndex(0)
            print(roadTripItems.backupEngines)
        }
    }
    
    @IBAction func checkOutButtonTapped(sender: UIButton) {
        let numberOfTools = validateIntEntry(toolKitTextField.text!)
        let numberOfTires = validateIntEntry(spareTireTextField.text)
        let numberOfEngines = validateIntEntry(spareEngineTextField.text)
        let subtractedAmount = (numberOfTools * 20) + (numberOfTires * 20) + (numberOfEngines * 20)
        let calculation = (roadTripItems.money) - CGFloat(subtractedAmount)
        roadTripItems.money = calculation
        currentBalanceLabel.text = String(format: "Current Balance: $%.2f", calculation)
    }

    @IBAction func continueButtonTapped(sender: UIButton) {
        terrysToolsTextView.text = "You can choose among three tools: spare tires, all-purpose kits, and backup engines. Spare tires and backup engines are important for crossing water. The all-purpose kit is all-ways useful."
        terrysToolsContinueButton.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
