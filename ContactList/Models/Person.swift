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
            name: DataStore.shared.names.randomElement() ?? "",
            surname: DataStore.shared.surnames.randomElement() ?? "",
            phoneNumber: DataStore.shared.phoneNumbers.randomElement() ?? "",
            email: DataStore.shared.emails.randomElement() ?? ""
        )
        ]
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var contactsList: [Person] = []
        
        var names = DataStore.shared.names
        var surnames = DataStore.shared.surnames
        var emails = DataStore.shared.emails
        var phoneNumbers = DataStore.shared.phoneNumbers
        
        while !names.isEmpty {
            let index = Int.random(in: 0..<names.count)
            
            let contact = Person(
                name: names.remove(at: index),
                surname: surnames.remove(at: index),
                phoneNumber: phoneNumbers.remove(at: index),
                email: emails.remove(at: index))
            
            contactsList.append(contact)
        }
        
        return contactsList
    }
}
