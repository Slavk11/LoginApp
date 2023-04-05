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
        User(login: "Alex", password: "Password", person: Person(
            personName: "Stanislav",
            personSurname: "Sazonov",
            personCompanyName: "Advanced clinical center",
            personDepartmentName: "Research Laboratory "
        )
        )
    }
}

struct Person {
    let personName: String
    let personSurname: String
    let personCompanyName: String
    let personDepartmentName: String
    
}
