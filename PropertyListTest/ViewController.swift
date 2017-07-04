//
//  ViewController.swift
//  PropertyListTest
//
//  Created by Rollin Francois on 7/2/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    var arrayOfContacts: NSArray? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load contacts.plist into arrayOfContacts
        let documentsDirectory: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true) [0] as String
        
        let plistPath2 = documentsDirectory + "/contacts2.plist"
        
        arrayOfContacts = NSArray(contentsOfFile: plistPath2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // delegate method
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // datasource method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (arrayOfContacts?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell1", for: indexPath) as UITableViewCell
        
        let contactName: String = arrayOfContacts!.object(at: indexPath.row) as! String

        cell.textLabel?.text = contactName
        
        return cell
    }
    
    
}


