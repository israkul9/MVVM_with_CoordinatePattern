//
//  HomeCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation
import UIKit


class MainCoordinator : Coordinator  {
    var window : UIWindow?
    
  
    var rootViewController = UITabBarController()
    
    var childCoordinator = [Coordinator]()
    
    func start() {
        let firstTabCoordinator = FirstTabCoordinator()
        firstTabCoordinator.start()
        
        let firstVC = firstTabCoordinator.rootViewController
        
        firstVC.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "paperplane"), selectedImage:  UIImage(systemName: "paperplane.fill"))
        
      
        
        let secondTabCoordinator = SecondTabCoordinator()
        secondTabCoordinator.start()
        
        
        let secondVC = secondTabCoordinator.rootViewController
        
        secondVC.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "bell"), selectedImage:  UIImage(systemName: "bell.fill"))
        
        
        
        let thirdTabCoordinator = ThirdTabCoordinator()
        
        thirdTabCoordinator.start()
        
        let thirdVC = thirdTabCoordinator.rootViewController
        
        thirdVC.tabBarItem = UITabBarItem(title: "Third", image: UIImage(systemName: "star"), selectedImage:  UIImage(systemName: "star.fill"))
        
        
        rootViewController.tabBar.backgroundColor = .systemOrange
        
        
        childCoordinator = [firstTabCoordinator , secondTabCoordinator , thirdTabCoordinator]
        
        self.rootViewController.viewControllers = [firstTabCoordinator.rootViewController , secondTabCoordinator.rootViewController , thirdTabCoordinator.rootViewController]
    }
}
