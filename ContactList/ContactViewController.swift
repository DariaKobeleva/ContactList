//
//  ViewController.swift
//  ContactList
//
//  Created by Дарья Кобелева on 28.02.2024.
//

import UIKit

final class ContactViewController: UITableViewController {
    private var contactList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getContactList()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailVC = segue.destination as? PersonDetailsViewController
        personDetailVC?.person = contactList[indexPath.row]
    }
    
    private func getContactList() {
        for _ in 0..<dataStore.names.count {
            let person = Person.getPerson()
            contactList.append(contentsOf: person)
        }
    }
}

// MARK: - UITableViewDataSource
extension ContactViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}


