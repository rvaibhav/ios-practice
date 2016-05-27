//
//  ViewController.swift
//  Empty Window
//
//  Created by Vaibhav Ranglani on 18/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let arr = NSBundle.mainBundle().loadNibNamed("Main", owner: nil, options: nil)
        let v = arr[0] as! UIView
        self.view.addSubview(v)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

