//
//  Slot.swift
//  swift-signals
//
//  The Slot class represents a signal slot.
//  Created by Exey Panteleev on 24/05/2018.
//

public class Slot: SlotProtocol, CustomStringConvertible {

    private var signal: OnceSignalProtocol
    
    private var _priority = 0
    public var priority: Int { return _priority }
    private var _once = false
    public var once: Bool { return _once }
    
    public var enabled = true
    public var observer: Any
    public var params: [Any]?
    
    public var description: String {
        return "[Slot observer: \(observer), once: \(once), priority: \(priority), enabled: \(enabled)]"
    }
    
    /** Creates and returns a new Slot object. */
    public init(observer: Any, signal: OnceSignalProtocol, once: Bool = true, priority: Int = 0) {
        self.observer = observer
        self.signal = signal
        _once = once
        _priority = priority
    }
    
    public func execute0() {
        if !enabled { return }
        if once { remove() }
        
        if let o = observer as? ((Any) -> Any?), let p = params {
            if apply(fn: o, args: p) == nil { print("Observer: \(o) or Params: \(p) are Invalid") }
        } else if let o = observer as? ((Any, Any) -> Any?), let p = params {
            if apply(fn2: o, args: p) == nil { print("Observer: \(o) or Params: \(p) are Invalid") }
        }
        // Default
        else if let o = observer as? () -> Any? {
            _ = o()
        }
    }
    
    public func execute1() {
        
    }
    
    public func execute(valueObjects: [Any]) {
        
    }
    
    public func remove() {
        _ = signal.remove(observer: observer)
    }
    
}
