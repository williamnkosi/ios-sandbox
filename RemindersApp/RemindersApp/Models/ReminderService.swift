//
//  ReminderService.swift
//  RemindersApp
//
//  Created by StateOfTN-STS on 11/4/20.
//

import Foundation

class ReminderService {
    
    static let shared = ReminderService()
    private var reminders = [Reminder]()
    
    //Create
    //First element will be the earliest reminder
    func create(reminder: Reminder){
        var indexToInsert: Int?
        for (index, element) in reminders.enumerated(){
            if element.date.timeIntervalSince1970 > reminder.date.timeIntervalSince1970{
                indexToInsert = index
                break
            }
        }
        
        if let indexToInsert = indexToInsert{
            reminders.insert(reminder, at: indexToInsert)
        } else {
            reminders.append(reminder)
        }
        
    }
    
    //Update
    func update(reminder: Reminder, index: Int)  {
        reminders[index] = reminder
    }
    
    //Get # of reminders
    func getNumberOfReminders() -> Int {
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
