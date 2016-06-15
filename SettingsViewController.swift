//
//  SettingsViewController.swift
//  Tip_Calculator
//
//  Created by Nancy Yao on 6/14/16.
//  Copyright © 2016 Nancy Yao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = NSUserDefaults.standardUserDefaults()
        let percent = defaults.doubleForKey("default_tip_percentage")
        
        var defaultIndex = 1
        if percent == 0.18 {
            defaultIndex = 0}
        else if percent==0.2 {
            defaultIndex = 1}
        else if percent == 0.25 {
            defaultIndex = 2}
        
        defaultControl.selectedSegmentIndex = defaultIndex
        let defaultPercentages = [0.18, 0.20, 0.25]
        
        defaults.setDouble(defaultPercentages[defaultControl.selectedSegmentIndex], forKey: "default_tip_percentage")
        defaults.synchronize()
        print("default set \(percent)")
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("settings view will disappear")
        let defaultPercentages = [0.18, 0.20, 0.25]
        let percent = defaultPercentages[defaultControl.selectedSegmentIndex]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(percent, forKey: "default_tip_percentage")
        defaults.synchronize()
        print("default set again \(percent)")
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
