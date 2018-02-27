//
//  ReviewViewController.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

protocol ReviewViewDelegate {
    func didIndicateDoneAction()
}

fileprivate extension Currency {
    
    var symbol: String {
        switch self {
        case .euro: return "€"
        case .dollar: return "$"
        }
    }
    
}

class ReviewViewController: UIViewController {

    let data: ReviewInput
    let delegate: ReviewViewDelegate
    init(data: ReviewInput, delegate: ReviewViewDelegate) {
        self.data = data
        self.delegate = delegate
        super.init(nibName: "ReviewViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var currencyLabel: UILabel! {
        didSet {
            self.currencyLabel.text = self.data.currency.symbol
        }
    }
    
    @IBOutlet weak var textLabel: UILabel! {
        didSet {
            self.textLabel.text = self.data.text
        }
    }
    
}

extension ReviewViewController {
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        self.delegate.didIndicateDoneAction()
    }
    
}
