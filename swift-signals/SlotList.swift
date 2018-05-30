//
//  SlotList.swift
//  swift-signals
//
//  The SlotList class represents an immutable list of Slot objects.
//  Created by Exey Panteleev on 24/05/2018.
//

public final class SlotList {
    
    public var head: SlotProtocol?
    public var tail: SlotList
    public var nonEmpty = false
    
    /** Represents an empty list. Used as the list terminator. */
    public static let NIL = SlotList(head: nil, tail: nil)
    
    /** The number of slots in the list. */
    public var count: UInt {
        if !nonEmpty { return 0 }
        if tail === SlotList.NIL { return 1 }
        var result: UInt = 0
        var p = self
        while p.nonEmpty {
            result += 1
            p = p.tail
        }
        return result
    }
    
    /** Creates and returns a new SlotList object. */
    public init(head: SlotProtocol?, tail: SlotList? = nil) {
        self.head = head
        if let t = tail {
            self.tail = t
        } else {
            self.tail = SlotList.NIL
        }
        nonEmpty = true
    }
    
    /** Prepends a slot to this list. */
    public func prepend(slot: SlotProtocol) -> SlotList {
        return SlotList(head: slot, tail: self)
    }
    
    /** Appends a slot to this list. */
    public func append(slot: SlotProtocol) -> SlotList {
        if !nonEmpty { return SlotList(head: head) }
        // Special case: just one slot currently in the list.
        if let h = head, tail === SlotList.NIL { return SlotList(head: slot).prepend(slot: h) }
        // The list already has two or more slots. We have to build a new list with cloned items because they are immutable.
        let wholeClone = SlotList(head: head)
        var subClone = wholeClone
        var current = tail
        while current.nonEmpty {
            subClone = SlotList(head: current.head)
            subClone.tail =  subClone
            current = current.tail
        }
        // Append the new slot last.
        subClone.tail = SlotList(head: slot)
        return wholeClone
    }
    
    /** Insert a slot into the list in a position according to its priority. The higher the priority, the closer the item will be inserted to the list head. */
    public func insertWithPriority(slot: SlotProtocol) -> SlotList {
        if !nonEmpty { return SlotList(head: slot) }
        
        l
        
    }
    
    
}
