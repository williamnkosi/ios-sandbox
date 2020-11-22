//
//  ReminderCell.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/5/20.
//

import UIKit

class ReminderCell: UITableViewCell {
    

    
    @IBOutlet weak var isCompleteView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    func update(reminder:Reminder) {
        titleLabel.text = reminder.title
        isCompleteView.layer.cornerRadius = isCompleteView.frame.width / 2.0
        isCompleteView.layer.borderColor = UIColor.lightGray.cgColor
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy hh:mma"
        dateLabel.text = dateFormatter.string(from: reminder.date)
        
        if reminder.isCompleted {
            isCompleteView.backgroundColor = UIColor.green
            isCompleteView.layer.borderWidth = 0.0
        } else {
            isCompleteView.backgroundColor = UIColor.white
            isCompleteView.layer.borderWidth = 2.0
        }
    }
}
