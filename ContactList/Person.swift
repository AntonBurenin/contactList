//
//  Person.swift
//  ContactList
//
//  Created by Bober on 09/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    func fullName() -> String {
        return name + " " + surname
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let countPersons = min(randomList.names.count,
                               randomList.surnames.count,
                               randomList.phones.count,
                               randomList.emails.count)
        for index in 0..<countPersons {
            let person = Person(name: randomList.names[index],
                                surname: randomList.surnames[index],
                                phone: randomList.phones[index],
                                email: randomList.emails[index] + "@mail.ru")
            persons.append(person)
        }
        return persons
    }
}

let contacts = Person.getContactList()
