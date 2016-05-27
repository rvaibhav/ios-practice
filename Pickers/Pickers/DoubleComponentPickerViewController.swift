//
//  DoubleComponentPickerViewController.swift
//  Pickers
//
//  Created by Vaibhav Ranglani on 24/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var doublePicker: UIPickerView!
    
    private let dishNames = ["Ham", "Turkey", "Peanut Butter", "Tuna Salad",
                             "Chicken Salad", "Roast Beef", "Vegemite"]
    
    private let breadNames = ["White", "Whole Wheat", "Rye", "Sourdough", "Seven Grain"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonPressed(sender: AnyObject) {
        let dish = doublePicker.selectedRowInComponent(0)
        let selectedDish = dishNames[dish]
        let bread = doublePicker.selectedRowInComponent(1)
        let selectedBread = breadNames[bread]
        let title = "Thank you for your order"
        let alert = UIAlertController(
            title: title,
            message: "Your \(selectedDish) on \(selectedBread) will be right up",
            preferredStyle: .Alert)
        let action = UIAlertAction(
            title: "Great",
            style: .Default,
            handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return dishNames.count
        } else if component == 1{
            return breadNames.count
        }
        return 0
    }
    // MARK: Picker Delegate Methods
    func pickerView(pickerView: UIPickerView,
                    titleForRow row: Int,
                                forComponent component: Int) -> String? {
        if component == 0{
            return dishNames[row]
        } else if component == 1{
            return breadNames[row]
        }
        return nil
    }
}
