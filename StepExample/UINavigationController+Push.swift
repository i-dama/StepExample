//
//  UINavigationController+Push.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit


extension UINavigationController {
    
    func pushViewController(_ viewController: UIViewController) {
        let animated = !self.viewControllers.isEmpty
        self.pushViewController(viewController, animated: animated)
    }
    
}
