//
//  ViewController.swift
//  Whats My Number
//
//  Created by Clicks Egypt on 11/4/19.
//  Copyright © 2019 Clicks Egypt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "My Number")
    }
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let numberObject = UserDefaults.standard.object(forKey: "My Number")
        if let number = numberObject as? String {
            result.text = "Your Saved Number is: " + number
        }
    }


}

