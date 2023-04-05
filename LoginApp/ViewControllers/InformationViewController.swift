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
    
    var fullName = ""
    var name = ""
    var surname = ""
    var company = ""
    var department = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileFullName.text = fullName
        profileName.text = "Name:  \(name)"
        profileSurname.text = "Surname:  \(surname)"
        companyName.text = "Company :  \(company)"
        departmentName.text = "Department:  \(department)"
    }
}
