//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 05.04.2023.
//

import UIKit

final class InformationViewController: UIViewController {

    @IBOutlet var profileFullName: UILabel!
    @IBOutlet var profileName: UILabel!
    @IBOutlet var profileSurname: UILabel!
    @IBOutlet var companyName: UILabel!
    @IBOutlet var departmentName: UILabel!
    
    @IBOutlet var profilePicture: UIImageView!
    
    var fullName = ""
    var name = ""
    var surname = ""
    var company = ""
    var department = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePicture.layer.masksToBounds = true
        profilePicture.layer.cornerRadius = profilePicture.frame.width / 2
        
        profileFullName.text = "\(name) \(surname)"
        profileName.text = "Name:  \(name)"
        profileSurname.text = "Surname:  \(surname)"
        companyName.text = "Company :  \(company)"
        departmentName.text = "Department:  \(department)"
    }
}

