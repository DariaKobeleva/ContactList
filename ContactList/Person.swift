//
//  Person.swift
//  ContactList
//
//  Created by Дарья Кобелева on 28.02.2024.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person]{
        [Person(
            name: dataStore.names.randomElement() ?? "",
            surname: dataStore.surnames.randomElement() ?? "",
            phoneNumber: dataStore.phoneNumbers.randomElement() ?? "",
            email: dataStore.emails.randomElement() ?? ""
        )
        ]
    }
}

