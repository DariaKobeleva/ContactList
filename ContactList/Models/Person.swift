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
    
    static func getContactList() -> [Person] {
        var contactsList: [Person] = []
        
        var names = DataStore.shared.names.shuffled()
        var surnames = DataStore.shared.surnames.shuffled()
        var emails = DataStore.shared.emails.shuffled()
        var phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        for index in 0..<DataStore.shared.names.count {
            let contact = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            contactsList.append(contact)
        }
        return contactsList
    }
}

