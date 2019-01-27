//
//  ViewController.swift
//  DubizzleTestAutomationExample
//
//  Created by Satheesh Kumar on 1/27/19.
//  Copyright © 2019 Satheesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var lblRegistrationSuccess: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblRegistrationSuccess.text="";
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func registerMe(_ sender: Any) {
        lblRegistrationSuccess.text = "";
        let regNumber = Int.random(in: 0 ... 5000)
        if let text = txtName.text, !text.isEmpty
        {
            lblRegistrationSuccess.text = "Success, REG No: \(regNumber)";
            txtName.text = "";
            txtAge.text = "";
        }else{
            lblRegistrationSuccess.text = "Please enter Name/Age";
        }

    }
}

