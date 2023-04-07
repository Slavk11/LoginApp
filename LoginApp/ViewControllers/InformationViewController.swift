//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 05.04.2023.
//

import UIKit

final class InformationViewController: UIViewController {
    var user: User!

    @IBOutlet var profileName: UILabel!
    @IBOutlet var profileSurname: UILabel!
    @IBOutlet var companyName: UILabel!
    @IBOutlet var departmentName: UILabel!
    
    @IBOutlet var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        profileName.text = user.person.name
        profileSurname.text = user.person.surname
        companyName.text = "Company: \(user.person.job.title)"
        departmentName.text = user.person.job.jobTitle
    }
}

