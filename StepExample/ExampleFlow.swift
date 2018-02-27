//
//  ExampleFlow.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit


class ExampleFlow {
    
    static func start(on viewController: UIViewController) {
        let navigation = UINavigationController()
        
        currencyStep(navigation).perform(()) { (currency) in
            textStep(navigation).perform(()) { (text) in
                let reviewInput = ReviewInput(currency: currency, text: text)
                reviewStep(navigation).perform(reviewInput) {
                    viewController.dismiss(animated: true, completion: nil)
                }
            }
        }
        
        viewController.present(navigation, animated: true, completion: nil)
    }
    
}
