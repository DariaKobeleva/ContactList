//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Дарья Кобелева on 28.02.2024.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
