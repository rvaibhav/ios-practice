//
//  CustomPickerViewController.swift
//  Pickers
//
//  Created by Vaibhav Ranglani on 24/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class CustomPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var images:[UIImage]!

    @IBOutlet weak var customPicker: UIPickerView!
    
    @IBOutlet weak var winLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        images = [
            UIImage(named: "seven")!,
            UIImage(named: "bar")!,
            UIImage(named: "crown")!,
            UIImage(named: "cherry")!,
            UIImage(named: "lemon")!,
            UIImage(named: "apple")!
        ]
        winLabel.text = " " // Note the space between the quotes
        arc4random_stir()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func spin(sender: AnyObject) {
        var win = false
        var numInRow = -1
        var lastVal = -1
        for i in 0..<5 {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            if newValue == lastVal {
                numInRow += 1
            } else {
                numInRow = 1
            }
            lastVal = newValue
            customPicker.selectRow(newValue, inComponent: i, animated: true)
            customPicker.reloadComponent(i)
            if numInRow >= 3 {
                win = true }
        }
        winLabel.text = win ? "WINNER!" : " "
        // Note the space between the quotes
    }
    
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5 }
    func pickerView(pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    // MARK:-
    // MARK: Picker Delegate Methods
    func pickerView(pickerView: UIPickerView,
                    viewForRow row: Int,
                               forComponent component: Int,
                                            reusingView view: UIView?) -> UIView {
        let image = images[row]
        let imageView = UIImageView(image: image)
        return imageView
    }
    func pickerView(pickerView: UIPickerView,
                    rowHeightForComponent component: Int) -> CGFloat {
        return 64 }
    
}
