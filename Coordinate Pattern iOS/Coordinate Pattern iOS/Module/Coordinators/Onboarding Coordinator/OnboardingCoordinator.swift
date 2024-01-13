//
//  OnboardingCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation
import UIKit
import SwiftUI

class OnboardingCoordinator : Coordinator {
    
    var window : UIWindow?
    var navigationControlloer = UINavigationController()
    var rootViewController = UIViewController()
    
  
   
  
    func start() {
        let onboardingView = OnboardingView { [weak self] in
           print("Done tapped on onboarding")
            UserDefaults.standard.set(true, forKey: "isFirstLaunchDone")
           
          
        }
        self.rootViewController = UIHostingController(rootView: onboardingView)
    }
    
  
}
