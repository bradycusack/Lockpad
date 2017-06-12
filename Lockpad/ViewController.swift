//
//  ViewController.swift
//  Lockpad
//
//  Created by Brady Cusack on 6/12/17.
//  Copyright © 2017 Brady Cusack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var keyImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var passcodeTF: UITextField!
    @IBOutlet weak var unlockBttn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onUnlockClick(_ sender: UIButton) {
        
        if(passcodeTF.text == "1234"){
            performSegue(withIdentifier: "AuthenticationSuccess", sender: self)
        } else {
            let failedLoginAlert = UIAlertController(title: "Login Failed", message: "Please enter the correct passcode!", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
            failedLoginAlert.addAction(defaultAction)
            present(failedLoginAlert, animated: true, completion: nil)
        }
        
    }

}

