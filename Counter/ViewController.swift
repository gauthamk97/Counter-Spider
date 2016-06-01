//
//  ViewController.swift
//  Counter
//
//  Created by Gautham Kumar on 22/05/16.
//  Copyright © 2016 Gautham Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var CounterLabel: UILabel!

    var countno = 0
    var myDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.countno=self.myDefaults.integerForKey("countno") //Assigns value of count no from previous run
        
        //Assigning Initial Count Value
        self.CounterLabel.text = "\(self.countno)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
//On Clicking the Count Button
    @IBAction func OnClick(sender: AnyObject) {
        countno+=1
        self.CounterLabel.text = "\(self.countno)"
        
        //Saves Countno
        self.myDefaults.setInteger(countno, forKey: "countno") 
    }
    
//On Clicking the Reset Button
    @IBAction func OnResetClick(sender: AnyObject) {
        
        self.countno=0
        CounterLabel.text = "\(countno)"

        //Saves Countno
        self.myDefaults.setInteger(self.countno, forKey: "countno") 
        
    }


}

