//
//  ViewController.swift
//  TestingNSUserDefaults
//
//  Created by Henry on 6/11/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        //Just need to give each one a unique key so we can reference it later
        defaults.setInteger(22, forKey: "Age")
        defaults.setBool(true, forKey: "UseTouchID")
        defaults.setDouble(M_PI, forKey: "Pi")
        
        //Use the setObject() to set strings, arrays, dictionaries and dates
        defaults.setObject("Henry Chien", forKey: "Name")
        defaults.setObject(NSDate(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.setObject(array, forKey: "SavedArray")
        
        let dict = ["Name": "Henry", "Country": "Taiwan"]
        defaults.setObject(dict, forKey: "SavedDict")
        
        //Use objectForKey() and as? to get an optional object, then use ?? to either unwrap the object or set a default value
        let loadedArray = defaults.objectForKey("SavedArray") as? [String] ?? [String]()
        let loadedDict = defaults.objectForKey("SavedDict") as? [String: String] ?? [String: String]()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

