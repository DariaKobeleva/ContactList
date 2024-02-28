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
            name: contactList.names.randomElement() ?? "",
            surname: contactList.surnames.randomElement() ?? "",
            phoneNumber: contactList.phoneNumbers.randomElement() ?? "",
            email: contactList.emails.randomElement() ?? ""
        )
        ]
    }
}

