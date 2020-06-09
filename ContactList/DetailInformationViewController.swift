//
//  DetailInformationViewController.swift
//  ContactList
//
//  Created by Bober on 09/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class DetailInformationViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contactInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = contactInfo.fullName()
        phoneLabel.text = "Phone: " + contactInfo.phone
        emailLabel.text = "Email: " + contactInfo.email
    }

}
