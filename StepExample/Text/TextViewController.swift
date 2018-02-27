//
//  TextViewController.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

protocol TextViewDelegate {
    func didIndicateContinueAction(text: String)
}

class TextViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let delegate: TextViewDelegate
    init(delegate: TextViewDelegate) {
        self.delegate = delegate
        super.init(nibName: "TextViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TextViewController {
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        let text = self.textField.text ?? ""
        self.delegate.didIndicateContinueAction(text: text)
    }
    
}
