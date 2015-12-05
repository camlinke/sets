//
//  WorkoutViewController.swift
//  Sets
//
//  Created by Cam Linke on 2015-12-05.
//  Copyright © 2015 camlinke. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//         Setup Navigation Bar
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 64))
        navigationBar.barTintColor = UIColor(red: 133/255.0, green: 226/255.0, blue: 121/255.0, alpha: 1.0)
        navigationBar.translucent = false
        navigationBar.opaque = false

        let navigationItem = UINavigationItem()
        navigationItem.title = "Upper Body 1"
        navigationBar.items = [navigationItem]

        self.view.addSubview(navigationBar)
        
        let width = self.view.frame.size.width * 0.4
        let height = width * 0.67
        let top = self.view.frame.size.height * 0.25
        
        
        let weightLabel = UILabel(frame: CGRect(x: 20, y: top, width: width, height: height))
        weightLabel.text = "225"
        weightLabel.layer.borderColor = UIColor(red: 133/255.0, green: 226/255.0, blue: 121/255.0, alpha: 1.0).CGColor
        weightLabel.layer.borderWidth = 3.0
        weightLabel.layer.cornerRadius = 9
        weightLabel.font = UIFont.systemFontOfSize(width / 2, weight: UIFontWeightBold)
        weightLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        weightLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(weightLabel)
        
        let repsLabel = UILabel(frame: CGRect(x: self.view.frame.size.width - width - 20, y: top, width: width, height: height))
        repsLabel.text = "3"
        repsLabel.layer.borderColor = UIColor(red: 133/255.0, green: 226/255.0, blue: 121/255.0, alpha: 1.0).CGColor
        repsLabel.layer.borderWidth = 3.0
        repsLabel.layer.cornerRadius = 9
        repsLabel.font = UIFont.systemFontOfSize(width / 2, weight: UIFontWeightBold)
        repsLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        repsLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(repsLabel)
        
        let weightIdentifierLabel = UILabel(frame: CGRect(x: 20, y: top + height + 5, width: width, height: 20))
        weightIdentifierLabel.text = "Pounds"
        weightIdentifierLabel.font = UIFont.systemFontOfSize(20, weight: UIFontWeightHeavy)
        weightIdentifierLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        weightIdentifierLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(weightIdentifierLabel)
        
        let repsIdentifierLabel = UILabel(frame: CGRect(x: self.view.frame.size.width - width - 20, y: top + height + 5, width: width, height: 20))
        repsIdentifierLabel.text = "Reps"
        repsIdentifierLabel.font = UIFont.systemFontOfSize(20, weight: UIFontWeightHeavy)
        repsIdentifierLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        repsIdentifierLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(repsIdentifierLabel)
        
        let exerciseNameLabel = UILabel(frame: CGRect(x: 0, y: self.view.frame.size.height * 0.1, width: self.view.frame.size.width, height: 80))
        exerciseNameLabel.text = "Incline Push Press"
        exerciseNameLabel.font = UIFont.systemFontOfSize(35, weight: UIFontWeightRegular)
        exerciseNameLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        exerciseNameLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(exerciseNameLabel)
        
        let lastTimeLabel = UILabel(frame: CGRect(x: 0, y: self.view.frame.size.height * 0.5, width: self.view.frame.size.width, height: 60))
        lastTimeLabel.text = "Last time: 225 Pounds, 6 Reps"
        lastTimeLabel.font = UIFont.systemFontOfSize(20, weight: UIFontWeightRegular)
        lastTimeLabel.textColor = UIColor(red: 73/255.0, green: 73/255.0, blue: 73/255.0, alpha: 1.0)
        lastTimeLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(lastTimeLabel)
        
        
        let buttonWidth = self.view.frame.size.width * 0.3
        let buttonHeight = buttonWidth
        
        let continueButton = UIButton(frame: CGRect(x: self.view.frame.size.width - buttonWidth - 20, y: (self.view.frame.size.height - buttonHeight) * 0.9, width: buttonWidth, height: buttonHeight))
        continueButton.backgroundColor = UIColor(red: 187/255.0, green: 255/255.0, blue: 179/255.0, alpha: 1.0)
        continueButton.layer.cornerRadius = buttonWidth / 2
        continueButton.layer.borderColor = UIColor(red: 133/255.0, green: 226/255.0, blue: 121/255.0, alpha: 1.0).CGColor
        continueButton.layer.borderWidth = 3
        self.view.addSubview(continueButton)
        
        let previousButton = UIButton(frame: CGRect(x: 20, y: (self.view.frame.size.height - buttonHeight) * 0.9, width: buttonWidth, height: buttonHeight))
        previousButton.backgroundColor = UIColor(red: 216/255.0, green: 216/255.0, blue: 216/255.0, alpha: 1.0)
        previousButton.layer.cornerRadius = buttonWidth / 2
        previousButton.layer.borderColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0).CGColor
        previousButton.layer.borderWidth = 3
        self.view.addSubview(previousButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
