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
    
    private var url: URL
    private init(){
        url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        url.appendPathComponent("reminder.json")
        load()
    }
    func load() {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            reminders = try decoder.decode([Reminder].self, from: data)
        } catch {
            print("Error loading file \(error.localizedDescription)")
        }
        
        
    }
    
    func save(){
        
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(reminders)
            try data.write(to: url)
        } catch  {
            print("error saving file \(error.localizedDescription)")
        }
        
        
    }
    
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
        save()
        
    }
    
    //Update
    func update(reminder: Reminder, index: Int)  {
        reminders[index] = reminder
        save()
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
        save()
    }
    
    //Get the list of reminders
    func getListOfReminder() -> [Reminder] {
        return reminders
    }
    
    //Delete a reminder
    func deleteReminder(index: Int) {
        reminders.remove(at: index)
        save()
    }
    
    func getFavoriteReminder() -> Reminder? {
        return reminders.first
    }
}
