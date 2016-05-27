//
//  ViewController.swift
//  Sections
//
//  Created by Vaibhav Ranglani on 25/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let sectionsTableIdentifier = "SectionsTableIndentifier"
    var names: [String: [String]]!
    var keys: [String]!
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerClass(UITableViewCell.self,
                                forCellReuseIdentifier: sectionsTableIdentifier)
        let path = NSBundle.mainBundle().pathForResource(
            "sortednames", ofType: "plist")
        let namesDict = NSDictionary(contentsOfFile: path!)
        names = namesDict as! [String: [String]]
        keys = (namesDict!.allKeys as! [String]).sort()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table View Data Source Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return keys.count
    }
    
    func tableView(tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        let key = keys[section]
        let nameSection = names[key]!
        return nameSection.count
    }
    
    func tableView(tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    
    func tableView(tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier(sectionsTableIdentifier,
                                                                   forIndexPath: indexPath)
                as UITableViewCell
            let key = keys[indexPath.section]
            let nameSection = names[key]!
            cell.textLabel?.text = nameSection[indexPath.row]
            return cell
    }
    
    //Method to show index keys on the right
    func sectionIndexTitlesForTableView(tableView: UITableView)
        -> [String]? {
            return keys
    }


}

