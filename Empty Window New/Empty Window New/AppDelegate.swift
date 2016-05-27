//
//  AppDelegate.swift
//  Empty Window New
//
//  Created by Vaibhav Ranglani on 17/05/16.
//  Copyright © 2016 Talentica Software. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?)
        -> Bool {
        self.window = UIWindow()
        self.window!.rootViewController = MyViewController(nibName:"MyViewController", bundle:nil)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
}

