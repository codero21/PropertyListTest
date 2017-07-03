//
//  ViewController.swift
//  PropertyListTest
//
//  Created by Rollin Francois on 7/2/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var arrayOfContacts: NSArray? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load contacts.plist into arrayOfContacts
        let documentsDirectory: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true) [0] as String
        
        let plistPath = documentsDirectory + "/contacts.plist"
        
        arrayOfContacts = NSArray(contentsOfFile: plistPath)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

