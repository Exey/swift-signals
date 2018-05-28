//
//  OnceSignal.swift
//  swift-signals
//
//  Signal posts events to multiple observers.
//  It is inspired by C# events and delegates, and by http://en.wikipedia.org/wiki/Signals_and_slots in Qt.
//
//  Created by Exey Panteleev on 24/05/2018.
//

public class OnceSignal: OnceSignalProtocol {
    
    var slots: SlotList = SlotList.NIL
    
    public var valueTypes: [Any.Type]
    
    public var numObservers: UInt
    
    public func addOnce(observer: Any) -> SlotProtocol {
        <#code#>
    }
    
    public func post(valueObjects: Any...) {
        <#code#>
    }
    

    

    
    var _valueClasses:[Any]
    public var valueClasses {
        get {
            return _valueClasses
        }
        set {
            // TODO Check Types
            _valueClasses = newValue
        }
    }
   
    
    init(valueClasses: Any...) {
        self.valueClasses = valueClasses
    }
    
    public func remove(observer: Any) -> SlotProtocol? {
        if let index = slots.index(of: observer) {
            
        }
        return nil
    }
    
    public func removeAll() {
        slots = SlotList.NIL
    }
    
}
