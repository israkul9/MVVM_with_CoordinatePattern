//
//  ThirdTabCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation

import UIKit

class ThirdTabCoordinator : Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var thirdViewController : ThirdViewController = {
    let vc = ThirdViewController()
        
        vc.title = "Third"
        
        return vc
        
    }()
    
    func start() {
        rootViewController.setViewControllers([thirdViewController], animated: false)
    }
}
