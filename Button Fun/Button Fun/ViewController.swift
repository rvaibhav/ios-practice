//
//  ViewController.swift
//  Button Fun
//
//  Created by Vaibhav Ranglani on 18/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        let text = "\(title) button pressed"
        //statusLabel.text = text
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSFontAttributeName:
            UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ]
        let nameRange = (text as NSString).rangeOfString(title)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }

}

