//
//  WorkoutListTableViewCell.swift
//  Sets
//
//  Created by Cam Linke on 2015-11-28.
//  Copyright © 2015 camlinke. All rights reserved.
//

import UIKit

class WorkoutListTableViewCell: UITableViewCell {
    
    var workoutName: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.workoutName = UILabel(frame: CGRect(x: self.frame.size.width * 0.05,
                                            y: (self.frame.size.height + 5) / 2,
                                        width: self.frame.size.width * 0.72,
                                        height: 27))
//        workoutName.backgroundColor = UIColor.redColor()
        self.workoutName.font = UIFont.systemFontOfSize(27, weight: UIFontWeightLight)
        self.workoutName.text = "Upper Body Day 1"
        self.contentView.addSubview(workoutName)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
