//
//  ViewController.swift
//  FirstApp
//
//  Created by StateOfTN-STS on 10/7/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var numberlabel: UILabel!
    @IBOutlet weak var petsNumberLabel: UILabel!
    
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var petNumberStepper: UIStepper!
    @IBOutlet weak var happyEnding: UISwitch!
    @IBOutlet weak var containerView: UIView!
    
    @IBAction func lessOrMoreChangeValue(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            containerView.isHidden = true
        } else {
            containerView.isHidden = false
        }
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        numberlabel.text = "\(Int(sender.value))"
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petsNumberLabel.text = "\(Int(sender.value))"
    }
    @IBAction func createStoryDidTapp(_ sender: UIButton) {
        let animal = animalSegmentedControl.titleForSegment(at: animalSegmentedControl.selectedSegmentIndex)
        let happyEndingValue = happyEnding.isOn ? "Now they live happily ever after": "Things didn't turn out too well"
        let story = "At age of \(ageTextField.text!), \(firstNameTextField.text!) took a trip to \(locationTextField.text!) with \(petsNumberLabel.text!) pets in order to \(verbTextField.text!) with a \(animal!).  \(firstNameTextField.text!)  decided to but \(Int(numberSlider.value)). \(happyEndingValue)"
        print(story)
        
        let alertController = UIAlertController(title: "My Story", message: story, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
}

