//
//  SlotList.swift
//  swift-signals
//
//  The SlotList class represents an immutable list of Slot objects.
//  Created by Exey Panteleev on 24/05/2018.
//

public final class SlotList {
    
    /** Represents an empty list. Used as the list terminator. */
    public static let NIL = SlotList(head: nil, tail: nil)
    
    /** Creates and returns a new SlotList object. */
    public init(head:SlotProtocol?, tail:SlotList?) {
        
    }
    
}
