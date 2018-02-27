//
//  CurrencyWireframe.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

enum Currency {
    case euro
    case dollar
}

func currencyStep(_ navigation: UINavigationController) -> StepT<Void, Currency> {
    return StepT(CurrencyWireframe(navigation: navigation))
}

class CurrencyWireframe: Step {
    
    let navigation: UINavigationController
    var completion: ((Currency) -> Void)?
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func perform(_ input: (), completion: @escaping (Currency) -> Void) {
        self.completion = completion
        
        let view = CurrencyViewController(delegate: self)
        
        self.navigation.pushViewController(view)
    }
    
}

extension CurrencyWireframe: CurrencyViewDelegate {
    
    func didIndicateEuroAction() {
        self.completion?(.euro)
    }
    
    func didIndicateDollarAction() {
        self.completion?(.dollar)
    }
    
}
