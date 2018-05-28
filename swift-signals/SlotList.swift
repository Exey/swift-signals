//
//  SlotList.swift
//  swift-signals
//
//  The SlotList class represents an immutable list of Slot objects.
//  Created by Exey Panteleev on 24/05/2018.
//

public final class SlotList {
    
    public var head: SlotProtocol
    public var tail: SlotList
    public var nonEmpty = false
    
    /** Represents an empty list. Used as the list terminator. */
    public static let NIL = SlotList(head: nil, tail: nil)
    
    /** The number of slots in the list. */
    public var count: UInt {
        if !nonEmpty { return 0 }
        if tail == SlotList.NIL { return = 1 }
        
    }
    
    /** Creates and returns a new SlotList object. */
    public init(head:SlotProtocol, tail:SlotList?) {
        self.head = head
        self.tail = tail == nil ? SlotList.NIL : tail
        nonEmpty = true
    }
    
    
    
    
}
