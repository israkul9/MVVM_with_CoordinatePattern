//
//  ApplicationCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation
import UIKit
import SwiftUI
import Combine
class ApplicationCoordinator : Coordinator {
    
    var window : UIWindow
    var navigationControlloer =  UINavigationController()
    var viewController = UIViewController()
    
    var childCoordinators = [Coordinator]()
    
    var onboardingCoordinator = OnboardingCoordinator()
    
    //  var hasSeenOnboarding = CurrentValueSubject <Bool,Never>(false)
    //  var subscription  = Set<AnyCancellable>()
    
    init(window : UIWindow){
        self.window = window
    }
    
    func start() {
        
        
        gotoMain()
        
        return
        
        if UserDefaults.standard.bool(forKey: "isFirstLaunchDone") == true  {
            self.gotoMain()
            
        }
        else {
            
            self.gotoOnboarding()
            
        }
    }
    func gotoMain(){
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        self.childCoordinators = [mainCoordinator]
        self.window.rootViewController = mainCoordinator.rootViewController
        self.window.makeKeyAndVisible()
    }
    
    func gotoOnboarding(){
        let onboardingCoordinator = OnboardingCoordinator()
        onboardingCoordinator.start()
        self.childCoordinators = [onboardingCoordinator]
        self.window.rootViewController = onboardingCoordinator.rootViewController
        self.window.makeKeyAndVisible()
    }
    
    
    
}
