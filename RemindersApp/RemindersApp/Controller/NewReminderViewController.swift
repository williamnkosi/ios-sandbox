//
//  NewReminderViewController.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/7/20.
//

import UIKit

class NewReminderViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    @IBAction func saveButtonDidTap(_ sender: UIButton) {
        
        let reminder = Reminder(title: titleTextField.text!, date: datePicker.date, isComplete: completedSwitch.isOn)
        ReminderService.shared.create(reminder: reminder)
        
        navigationController!.popViewController(animated: true)
        
    }
}
