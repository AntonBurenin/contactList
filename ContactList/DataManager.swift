//
//  DataManager.swift
//  ContactList
//
//  Created by Bober on 09/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

class DataManager  {
    let names: [String]
    let surnames: [String]
    let phones: [String]
    let emails: [String]
    init() {
        let namesSet: Set<String> = ["John",
                                     "Mary",
                                     "Jura",
                                     "Anton",
                                     "Dima",
                                     "Gendalf",
                                     "Harry",
                                     "Elvis",
                                     "Emmy",
                                     "Ostap",]
        let surnamesSet:Set<String> = ["Smith",
                                       "Weston",
                                       "Cosmos",
                                       "Sprawl",
                                       "Potter",
                                       "Baggins",
                                       "Vorobyaninov",
                                       "Bender",
                                       "Presley",
                                       "Wainhouse"]
        let phonesSet:Set<String> = ["85955152",
                                     "+7915488553",
                                     "+318114762589",
                                     "14-86",
                                     "8-800-000-1-000",
                                     "700-800",
                                     "2-62-38",
                                     "911",
                                     "+7963631844"]
        let emailsSet:Set<String> = ["exit",
                                     "master",
                                     "blm",
                                     "1815995ewrter",
                                     "kisa",
                                     "swiftbook",
                                     "lanta",
                                     "sauron",
                                     "sega1810",
                                     "visit"]
        names = Array(namesSet)
        surnames = Array(surnamesSet)
        phones = Array(phonesSet)
        emails = Array(emailsSet)
    }
}

let randomList = DataManager()


