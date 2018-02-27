//
//  CurrencyViewController.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

protocol CurrencyViewDelegate {
    func didIndicateEuroAction()
    func didIndicateDollarAction()
}

class CurrencyViewController: UIViewController {

    let delegate: CurrencyViewDelegate
    init(delegate: CurrencyViewDelegate) {
        self.delegate = delegate
        super.init(nibName: "CurrencyViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension CurrencyViewController {
    
    @IBAction func euroButtonPressed(_ sender: Any) {
        self.delegate.didIndicateEuroAction()
    }
    
    @IBAction func dollarButtonPressed(_ sender: Any) {
        self.delegate.didIndicateDollarAction()
    }
    
}

