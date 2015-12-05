//
//  EditWorkoutTableViewCell.swift
//  Sets
//
//  Created by Cam Linke on 2015-12-05.
//  Copyright © 2015 camlinke. All rights reserved.
//

import UIKit

class EditWorkoutTableViewCell: UITableViewCell {
    
    var exerciseName: UILabel!
    var exerciseDetail: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        
        self.exerciseName = UILabel(frame: CGRect(x: self.frame.size.width * 0.05,
                                                  y: (self.frame.size.height + 5) / 2,
                                              width: self.frame.size.width * 0.72,
                                             height: 24))
        
        self.exerciseName.font = UIFont.systemFontOfSize(24, weight: UIFontWeightLight)
        self.exerciseName.text = "Incline Push Press"
        self.contentView.addSubview(exerciseName)
        
        self.exerciseDetail = UILabel(frame: CGRect(x: self.frame.size.width * 0.05,
                                                    y: (self.frame.size.width) / 2,
                                                width: self.frame.size.width * 0.72,
                                               height: 15))
        self.exerciseDetail.font = UIFont.systemFontOfSize(24, weight: UIFontWeightLight)
        self.exerciseDetail.text = "5 sets"
        self.contentView.addSubview(exerciseDetail)
        
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
