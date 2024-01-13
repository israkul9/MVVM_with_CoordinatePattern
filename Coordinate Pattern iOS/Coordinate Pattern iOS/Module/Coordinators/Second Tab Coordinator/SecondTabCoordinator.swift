//
//  SecondTabCoordinator.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import Foundation

import UIKit


class SecondTabCoordinator : Coordinator{
    
    
    var rootViewController = UINavigationController()
    
    lazy var secondViewController : SecondViewController = {
        let vc = SecondViewController()
        vc.title = "second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: false)
    }
}
