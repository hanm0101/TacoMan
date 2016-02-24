//
//  WeekTableViewCell.swift
//  TacoMan
//
//  Created by hana on 10/2/2016.
//  Copyright © 2016 hana. All rights reserved.
//

import UIKit

class WeekTableViewCell: UITableViewCell {

    @IBOutlet var Weekday: UILabel!
    
    @IBOutlet var Date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Initialization code]
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
