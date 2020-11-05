//
//  ReminderService.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/4/20.
//

import Foundation

class ReminderService {
    
    static let sharted = ReminderService()
    private var reminders = [Reminder]()
    
    //Create
    func create(reminder: Reminder){
        reminders.append(reminder)
    }
    
    //Update
    func update(reminder: Reminder, index: Int)  {
        reminders[index] = reminder
    }
    
    //Get # of reminders
    func getNumberOfReminder() -> Int {
        return reminders.count
    }
    
    //Get a specific reminder
    func getReminder(index:Int) -> Reminder {
        return reminders[index]
    }
    
    //Toggle completed status of a reminder
    func toggleCompleted(index: Int) {
        reminders[index].isCompleted = !reminders[index].isCompleted
    }
    
    //Get the list of reminders
    func getListOfReminder() -> [Reminder] {
        return reminders
    }
    
    //Delete a reminder
    func deleteReminder(index: Int) {
        reminders.remove(at: index)
    }
    
    func getFavoriteReminder() -> Reminder? {
        return reminders.first
    }
}
