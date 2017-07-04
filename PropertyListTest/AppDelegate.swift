//
//  AppDelegate.swift
//  PropertyListTest
//
//  Created by Rollin Francois on 7/2/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Create contacts.plist in the documents directory, if it does not exist
        let fileManager: FileManager = FileManager.default
        
        let documentsDirectory: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] as String
        
        let plistPath2 = documentsDirectory + "/contacts2.plist"
        
        if fileManager.fileExists(atPath: plistPath2) == false {
            let contacts: NSMutableArray = NSMutableArray()
            contacts.add("Elena")
            contacts.add("Sonam")
            contacts.add("Jane")
            contacts.add("Paul")
            contacts.add("Abhishek")
            contacts.add("Nick")
            contacts.add("Steve")
            contacts.add("Rollin")
            contacts.add("Joshua")
            contacts.add("Jeremiah")
            
            contacts.write(toFile: plistPath2, atomically: true)
        }
        
        
        return true
        
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

