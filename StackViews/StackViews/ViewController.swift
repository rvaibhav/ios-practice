//
//  ViewController.swift
//  StackViews
//
//  Created by Vaibhav Ranglani on 26/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    private static let imageCount = 6;
    private var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showImage(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onButtonPressed(sender: UIButton) {
        let buttonTag = sender.tag
        switch (buttonTag){
            case 0:
                index = (index + 1) % ViewController.imageCount
                showImage(index)
                break;
            case 1:
                index = index == 0 ? ViewController.imageCount - 1 : --index
                showImage(index)
                break;
            case 2:
                showImage(0)
            default:
                break;
        }
    }
    
    private func showImage(index: Int) {
        label.text = "Image \(index)"
        imageView.image = UIImage(named: "image\(index)")
    }
    
}

