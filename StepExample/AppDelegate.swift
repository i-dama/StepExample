//
//  AppDelegate.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = LaunchViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }


}

