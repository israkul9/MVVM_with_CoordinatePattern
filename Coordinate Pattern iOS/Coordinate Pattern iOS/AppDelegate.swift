//
//  AppDelegate.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            let appcoordinator = ApplicationCoordinator(window: window)
            appcoordinator.start()
        }
       
       
        
        return true
    }


}

