//
//  ActivityCellTableViewCell.swift
//  timeTracker
//
//  Created by Susannah on 4/23/15.
//  Copyright (c) 2015 Susannah. All rights reserved.
//

import UIKit

class ActivityCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
