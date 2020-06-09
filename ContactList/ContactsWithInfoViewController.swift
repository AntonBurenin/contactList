//
//  ContactsWithInfoViewController.swift
//  ContactList
//
//  Created by Bober on 10/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class ContactsWithInfoViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text =  indexPath.row == 0 ?
            "Phone: " + contacts[indexPath.section].phone :
            "Email: " + contacts[indexPath.section].email
        return cell
    }

}
