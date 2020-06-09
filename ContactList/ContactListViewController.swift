//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Bober on 09/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        cell.textLabel?.text = contacts[indexPath.row].fullName()

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailInformationViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        destinationVC.contactInfo = contacts[indexPath.row]
    }
 

}
