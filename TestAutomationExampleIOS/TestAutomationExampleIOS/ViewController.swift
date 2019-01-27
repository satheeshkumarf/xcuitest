//
//  ViewController.swift
//  TestAutomationExampleIOS
//
//  Created by Satheesh Kumar on 1/27/19.
//  Copyright © 2019 Satheesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblMessage.text = ""
    }
    
    
    @IBAction func registerMe(_ sender: Any) {
        
         lblMessage.text = ""
         let regNum = Int.random(in: 0 ... 5000)
  
        if let text = txtName.text, !text.isEmpty{
            lblMessage.text = "Success. RegNum: \(regNum)"
            txtName.text = ""
            txtPhone.text = ""
            txtEmail.text = ""
        }
        else{
            lblMessage.text = "Failed, Missing Details"
        }

    }
    


}

