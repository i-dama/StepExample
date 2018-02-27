//
//  LaunchViewController.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import UIKit

class LaunchViewController: UIViewController {
    
    init() {
        super.init(nibName: "LaunchViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        ExampleFlow.start(on: self)
    }
    
}
