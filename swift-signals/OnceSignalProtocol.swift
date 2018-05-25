//
//  OnceSignalProtocol.swift
//  swift-signals
//
//  Port from Robert Penner and Joa Ebert as3-signals
//  Created by Exey Panteleev on 24/05/2018.
//

public protocol OnceSignalProtocol {

    /** An array for optional use of type defining the types of parameters sent to obesrvers */
    var valueTypes: [Any.Type] { get set }
    
    /** The current number of observers for the signal. */
    var numObservers: UInt { get }
    
    /** Subscribes a one-time observer for this signal. The signal will remove the observer automatically the first time it is called, after the post to all observers is complete. */
    func addOnce(observer:Any) -> SlotProtocol
    
    /** Posts an object to observers */
    func post(valueObjects: Any...)
    
    /** Unsubscribes a observer from the signal. */
    func remove(observer:Any) -> SlotProtocol
    
    /** Unsubscribes all observers from the signal. */
    func removeAll()
    
}
