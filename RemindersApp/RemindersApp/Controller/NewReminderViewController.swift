//
//  NewReminderViewController.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/7/20.
//

import UIKit

class NewReminderViewController: UIViewController {
    
    var reminderIndex: Int?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let reminderIndex = reminderIndex {
            let reminder = ReminderService.shared.getReminder(index: reminderIndex)
            titleTextField.text = reminder.title
            datePicker.date = reminder.date
            completedSwitch.isOn = reminder.isCompleted
        }
    }
    @IBAction func saveButtonDidTap(_ sender: UIButton) {
        
        // Create reminder object
        let reminder = Reminder(title: titleTextField.text!, date: datePicker.date, isComplete: completedSwitch.isOn)
        if let reminderIndex = reminderIndex {
            ReminderService.shared.update(reminder: reminder, index: reminderIndex)
        } else {
            ReminderService.shared.create(reminder: reminder)
        }
        
        
        
        navigationController!.popViewController(animated: true)
        
    }
}
