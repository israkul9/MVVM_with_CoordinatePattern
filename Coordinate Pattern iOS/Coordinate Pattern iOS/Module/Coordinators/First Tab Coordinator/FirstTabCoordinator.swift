//
//  FirstTabCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation
import UIKit


class FirstTabCoordinator : Coordinator{
    
    
    var rootViewController = UINavigationController()
    
    lazy var firstViewController : FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
}
