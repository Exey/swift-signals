//
//  Slot.swift
//  swift-signals
//
// The Slot protoco; defines the basic properties of a listener associated with a Signal.
// Created by Exey Panteleev on 23/05/2018.
//

import Foundation

public protocol Slot {
    
    associatedtype Observer
    
    /** The observer associated with this slot. */
    var observer: Observer { get set }
    
    /** Allows the Slot to inject parameters when posting. */
    var params: [Any] { get set }
    
    /** Whether this slot is automatically removed after it has been used once. */
    var once: Bool { get }
    
    /** The priority of this slot should be given in the execution order. Defaults to 0. */
    var priority: Int { get }

    /** Whether the observer is called on execution. Defaults to true. */
    var enabled: Bool { get set }
    
    /** Executes a observer without arguments. */
    func execute0()
    
    /** Post one argument to a observer. */
    func execute1()
    
    /** Executes a observer with n arguments. */
    func execute(valueObjects:[Any])
    
    /** Removes the slot from its signal. */
    func remove()
    
}
