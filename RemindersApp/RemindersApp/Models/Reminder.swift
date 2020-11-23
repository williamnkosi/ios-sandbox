//
//  Reminder.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/4/20.
//

import Foundation


class Reminder: Codable {
    var title: String
    var date: Date
    var isCompleted: Bool
    
    init(title:String, date:Date, isComplete: Bool){
        self.title = title
        self.date = date
        self.isCompleted = isComplete
    }
}
