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
     User(login: "Alex", password: "Password", person: Person(name: "FF", surname: "ff"))
    }
}



struct Person {
    let name: String
    let surname: String
}
