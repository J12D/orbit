//
//  AppDelegate.swift
//  stellar-ios
//
//  Created by Vijay Karunamurthy on 8/3/14.
//  Copyright (c) 2014 vjkaruna. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let splitViewController = self.window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.endIndex-1] as! UINavigationController
        splitViewController.delegate = navigationController.topViewController as! DetailViewController
        return true
    }
}