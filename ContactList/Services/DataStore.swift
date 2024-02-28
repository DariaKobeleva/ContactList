//
//  DataStore.swift
//  ContactList
//
//  Created by Дарья Кобелева on 28.02.2024.
//

final class DataStore {
    static let shared = DataStore()
    
    
    let names = ["Jean",
                 "Claire",
                 "Luc",
                 "Emilie",
                 "Antoine",
                 "Marie",
                 "Pierre",
                 "Sophie",
                 "Nicolas",
                 "Isabelle"]
    let surnames = ["Lefevre",
                    "Dubois",
                    "Durand",
                    "Dupont",
                    "Leroy",
                    "Moreau",
                    "Simon",
                    "Lefebvre",
                    "Michel",
                    "Garcia"]
    let phoneNumbers = ["123-456-7890",
                        "987-654-3210",
                        "555-123-4567",
                        "456-789-0123",
                        "321-654-9870",
                        "789-456-1230",
                        "654-987-3210",
                        "987-321-6540",
                        "654-123-7890",
                        "321-789-4560"]
    let emails = ["tiger123@example.com",
                  "elephant456@example.com",
                  "lion789@example.com",
                  "monkey987@example.com",
                  "zebra234@example.com",
                  "giraffe567@example.com",
                  "penguin890@example.com",
                  "koala123@example.com",
                  "bear456@example.com",
                  "dolphin789@example.com"]
    
    private init() {}
}

