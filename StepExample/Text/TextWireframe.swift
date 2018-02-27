//
//  TextWireframe.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

func textStep(_ navigation: UINavigationController) -> StepT<Void, String> {
    return StepT(TextWireframe(navigation: navigation))
}

class TextWireframe: Step {
    
    var completion: ((String) -> Void)?
    let navigation: UINavigationController
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func perform(_ input: (), completion: @escaping (String) -> Void) {
        self.completion = completion
        
        let view = TextViewController(delegate: self)
        
        self.navigation.pushViewController(view)
    }
    
}

extension TextWireframe: TextViewDelegate {
    
    func didIndicateContinueAction(text: String) {
        self.completion?(text)
    }
    
}
