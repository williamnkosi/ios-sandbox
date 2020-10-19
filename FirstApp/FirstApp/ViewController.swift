//
//  ViewController.swift
//  FirstApp
//
//  Created by StateOfTN-STS on 10/7/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitDidTapped(_ sender: UIButton) {
        print("user has typed \(firstNameTextField.text!)")
    }
}

