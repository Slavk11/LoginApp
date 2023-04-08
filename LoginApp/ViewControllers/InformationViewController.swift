//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 05.04.2023.
//

import UIKit

final class InformationViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    
    @IBOutlet var profileName: UILabel!
    @IBOutlet var profileSurname: UILabel!
    @IBOutlet var companyName: UILabel!
    @IBOutlet var departmentName: UILabel!
    
    @IBOutlet var profilePicture: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        profileName.text = "Name: \(user.person.name)"
        profileSurname.text = "Surname: \(user.person.surname)"
        companyName.text = "Company: \(user.person.job.title)"
        departmentName.text = "Department: \(user.person.job.jobTitle)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? UserBioViewController else {return}
        infoVC.user = user
    }
}

