//
//  BlueViewController.swift
//  View Switcher
//
//  Created by Vaibhav Ranglani on 24/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func blueButtonPressed(sender: UIButton) {
        let alert = UIAlertController(title: "Blue View Button Pressed",
                                      message: "You pressed the button on the blue view",
                                      preferredStyle: .Alert)
        let action = UIAlertAction(title: "Yep, I did", style: .Default,
                                   handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }

}
