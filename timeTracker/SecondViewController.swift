//
//  SecondViewController.swift
//  timeTracker
//
//  Created by Susannah on 4/15/15.
//  Copyright (c) 2015 Susannah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    
    var timer = NSTimer()
    var hours = 0
    var totalSeconds = 0
    var seconds = 0
    var minutes = 0
    
    @IBAction func buttonPressed() {
        timer.invalidate()
        let alert = UIAlertController(title: "You finished!",
            message: "Congratulations! You completed #activity with time to spare!",
            preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Activity Complete", style: UIAlertActionStyle.Default, handler: {
            action in self.setupGame()
        }))
        presentViewController(alert, animated: true, completion:nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
    
    func setupGame()  {
        totalSeconds = 90
        minutes = totalSeconds / 60
        seconds = totalSeconds % 60
        if (seconds < 10) {
            timerLabel.text = "Time remaining: \(minutes):0\(seconds)"
        }
        else {
            timerLabel.text = "Time remaining: \(minutes):\(seconds)"
        }
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
    }
    
    func subtractTime() {
        totalSeconds--
        minutes = totalSeconds / 60
        seconds = totalSeconds % 60
        
        if (seconds < 10) {
            timerLabel.text = "Time remaining: \(minutes):0\(seconds)"
        }
        else {
            timerLabel.text = "Time remaining: \(minutes):\(seconds)"
        }
        
        if(seconds == 0) && (minutes == 0) {
            timer.invalidate()
            let alert = UIAlertController(title: "Time is up!",
                message: "Congratulations on completing your #activity",
                preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Activity Complete", style: UIAlertActionStyle.Default, handler: {
                action in self.setupGame()
            }))
            presentViewController(alert, animated: true, completion:nil)
        }
    }

}

