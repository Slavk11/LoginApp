//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 05.04.2023.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var testLabel: UILabel!
    
    var testString = ""

    override func viewDidLoad() {
        
        super.viewDidLoad()

        testLabel.text = "Hello \(testString)"
    }
    

   
}
