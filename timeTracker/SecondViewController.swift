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
    
    var seconds = 0
    var timer = NSTimer()
    
    
    @IBAction func buttonPressed() {
        NSLog("Button Pressed")
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
        seconds = 30
        timerLabel.text = "Time: \(seconds)"
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
    }
    
    func subtractTime() {
        seconds--
        timerLabel.text = "Time: \(seconds)"
        
        if(seconds == 0)  {
            timer.invalidate()
            let alert = UIAlertController(title: "Time is up!",
                message: "Congradulations on completing your #activity",
                preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Activity Complete", style: UIAlertActionStyle.Default, handler: {
                action in self.setupGame()
            }))
            presentViewController(alert, animated: true, completion:nil)
        }
    }

}

