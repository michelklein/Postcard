//
//  ViewController.swift
//  Postcard
//
//  Created by Michel Klein on 06/12/14.
//  Copyright (c) 2014 Michel Klein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet var messageLabelRev: UIView!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        nameLabel.hidden = false;
        nameLabel.text = "Name: " +  enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

