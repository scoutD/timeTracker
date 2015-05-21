//
//  SettingsViewController.swift
//  timeTracker
//
//  Created by Susannah on 5/15/15.
//  Copyright (c) 2015 Susannah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController /*UIPickerViewDataSource,UIPickerViewDelegate*/ {

    @IBOutlet weak var alarmPicker: UIPickerView!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        alarmPicker.delegate = self
        alarmPicker.dataSource = self
        colorPicker.delegate = self
        colorPicker.dataSource = self
*/
        
    }
    
    let alarmSounds = [
        "By The Seaside", "Chimes", "Circuit", "Constellation", "Crystals", "Hillside", "Night Owl", "Presto", "Radiate", "Ripples", "Stargaze", "Twinkle", "Uplift", "Waves"
    ]
    
    let colors = [
        "red", "orange", "yellow", "green", "sky blue", "navy", "lavendar", "purple", "black", "brown", "teal", "magenta"
    ]
    
}
