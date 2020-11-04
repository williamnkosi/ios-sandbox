//
//  ViewController.swift
//  tableviewproject
//
//  Created by StateOfTN-STS on 11/3/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let people = ["Amy Adams", "Sam Smith","Will Smith","Jerry Brown", "James Lee"]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user has tapped on cell \(indexPath.row)")
    }
  
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AvatarCell")! as! AvatarCell
        cell.nameLabel.text = people[indexPath.row]
        return cell
    }

  
}

