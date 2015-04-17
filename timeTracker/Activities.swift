//
//  Activities.swift
//  timeTracker
//
//  Created by Susannah on 4/17/15.
//  Copyright (c) 2015 Susannah. All rights reserved.
//

import UIKit

class Activity: NSObject {
    var name: String
    
    init(name:String) {
        self.name = name
        super.init()
    }
}

