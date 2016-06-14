//
//  SettingsViewController.swift
//  Tip_Calculator
//
//  Created by Nancy Yao on 6/14/16.
//  Copyright © 2016 Nancy Yao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    @IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var defaultField: UITextField!
    
   // let defaultEntry = Double(defaultField.text!) ?? 0
    
    
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setDouble(0.2, forKey: "default_tip_percentage")
    defaults.synchronize()
    
}
