//
//  ActivityDetailsViewController.swift
//  timeTracker
//
//  Created by Susannah on 4/21/15.
//  Copyright (c) 2015 Susannah. All rights reserved.
//

import UIKit

class ActivityDetailsViewController: UITableViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    var activity:Activity!
    var activityName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        nameTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveActivityDetail" {
            let textField = self.nameTextField
            let text = textField.text
            activity = Activity(name: self.nameTextField.text)
        }
    }
}
