//
//  ReviewWireframe.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

struct ReviewInput {
    let currency: Currency
    let text: String
}

func reviewStep(_ navigation: UINavigationController) -> StepT<ReviewInput, Void> {
    return StepT(ReviewWireframe(navigation: navigation))
}

class ReviewWireframe: Step {
    
    let navigation: UINavigationController
    var completion: ((()) -> Void)?
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func perform(_ input: ReviewInput, completion: @escaping (()) -> Void) {
        self.completion = completion
        
        let view = ReviewViewController(data: input, delegate: self)
        
        self.navigation.pushViewController(view)
    }
    
}

extension ReviewWireframe: ReviewViewDelegate {
    
    func didIndicateDoneAction() {
        self.completion?(())
    }
    
}
