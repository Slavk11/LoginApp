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
            login: "User",
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
            bio: """
                Hello! My name is Stanislav. I am interesting in technology and electronics.
                I like Apple ecosystem, and I have a lot of Apple devices.
                My dream is became a IOS developer and create a lot of useful applications for people.
                I began to learn Swift from from 30.01.2023, let's take a look where it will go 😊
                """,
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
