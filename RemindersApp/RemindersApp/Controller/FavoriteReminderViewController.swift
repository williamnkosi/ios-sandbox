//
//  FavoriteReminderViewController.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/5/20.
//

import UIKit

class FavoriteReminderViewController : UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let favoriteReminder = ReminderService.shared.getFavoriteReminder(){
            titleLabel.text = favoriteReminder.title
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yy hh:mma"
            dateLabel.text = dateFormatter.string(from: favoriteReminder.date)
        }
    }
}
