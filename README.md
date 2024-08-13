# ContactsApp

## Description
This application uses `UITableView` to display a list of people with randomly generated names and surnames. Selecting a contact from the list opens a detailed information screen, showing the full name, email, and phone number of the selected person.

## Demo
<img src="https://github.com/user-attachments/assets/018b353b-bb63-4ae3-afe0-c4314dde9357" width="200"/>

## Features
- **Data Model and Storage:**
  - A `Person` data model, defined as a structure, includes properties for first name, last name, email, and phone number.
  - A `DataStore` class contains arrays of first names, last names, emails, and phone numbers. These arrays are used to generate unique instances of `Person`, ensuring no duplicates across the app.

- **User Interface:**
  - The contacts list is presented using `UITableView`.
  - Each contact opens a detailed view with their full name, email, and phone number.
  - A `TabBarController` is used to add a second screen that displays the full list of contacts with detailed information. The full name serves as the section header, with email and phone number as rows within each section.

## What I Learned:
- Creating and managing data models with structures.
- Ensuring uniqueness of data through controlled random generation.
- Implementing `UITableView` for displaying dynamic data.
- Handling data transfer and screen transitions in iOS.
- Organizing app navigation using `TabBarController`.
- Structuring data presentation with sections in `UITableView`.

