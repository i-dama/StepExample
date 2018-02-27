//
//  Step.swift
//  StepExample
//
//  Created by Ivan Damjanovic on 2/27/18.
//

import Foundation

/**
 *  Defines a step as an asynchronus operation taking in the INPUT parameter
 *  and calling the completion block with the OUTPUT as a parameter
 *  Usually, the Step is a screen in the app
 */
public protocol Step {
    
    /// Alias for the INPUT parameter
    associatedtype INPUT
    /// Alias fot the OUTPUT parameter
    associatedtype OUTPUT
    
    /**
     Perofrm the Setp with the given *INPUT*, and calls the *completion* block with produced *OUTPUT* when done.
     The completion block can be called multiple times - for instance, when the user goes back to change some
     data, and than proceeds further again
     
     - parameter input:      input data
     - parameter completion: completion block
     */
    func perform(_ input: INPUT, completion: @escaping (_ output: OUTPUT) -> Void)
    
}

/**
 *  Struct wrapping the *Step* protocol to enable generic definitions of steps
 */
public struct StepT<INPUT, OUTPUT> : Step {
    
    /// Perform function
    fileprivate let _perform : (INPUT, @escaping (OUTPUT) -> Void) -> Void
    
    /**
     Designated initializer. Takes an instance of *Step* protocol that matches the generic aliases and creates an instance.
     
     - parameter step: *Step* protocol instance
     
     - returns: Wrapped structure
     */
    public init<P : Step>(_ step: P) where P.INPUT == INPUT, P.OUTPUT == OUTPUT {
        _perform = step.perform
    }
    
    public func perform(_ input: INPUT, completion: @escaping (_ output: OUTPUT) -> Void) {
        self._perform(input, completion)
    }
    
}
