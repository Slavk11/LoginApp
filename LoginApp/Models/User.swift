//
//  User.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 04.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Alex",
            password: "Password",
            person: Person.getPerson()
        )
    }
}
    
struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Stanislav",
            surname: "Sazonov",
            photo: "Stanislav",
            bio: "About me",
            job: Company.getCompany()
        )
    }
}
    
struct Company {
    let title: String
    let jobTitle: String
    
    static func getCompany() -> Company {
        Company(
            title: "Advanced clinical center",
            jobTitle: "Research laboratory"
        )
    }
}
