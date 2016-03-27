//
//  Queue.swift
//  Data Structs and Algorithms
//
//  Created by Michael Hollingshaus on 3/26/16.
//  Copyright © 2016 LittleGiant. All rights reserved.
//

/* ---------------------------------------------------
Copyright (c) 2016 Michael Hollingshaus (LittleGiant)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
------------------------------------------------------ */

import Foundation

/* In practicality, the queue is incredibly similar to the stack, except it is FIFO rather than LIFO. It is generally used in situations where data is to be held and interpreted later */

class Queue {
    
    // MARK: Properties
    
    var size: Int
    var top: Node?
    var bot: Node?
    
    // MARK: Functions
    
    
    // Stores a new element inside of the queue
    func enqueue(newTop: Node) {
        if top != nil {
            self.top.setLeft(newTop)
            newTop.setRight(top)
        }
        
        self.top = newTop
        self.size++
    }
    
    // releases the bot node off of the queue
    func dequeue() -> Node {
        if self.top == nil {
            return
        }
        
        var dummy = Node
        var returnNode = self.bot
        self.bot = self.bot.getLeft()
        self.bot.setRight(dummy)
        self.size--
        
        return returnNode
    }
    
    // Looks at the value of the top node of the queue
    func peekTop() -> Int {
        return self.top.getValue()
    }
    
    // Looks at the value of the bot node of the queue
    func peekBot() -> Int {
        return self.bot.getValue()
    }
    
    // returns value of each node value in stack
    func showAllValues() {
        var curr = self.top
        
        while curr != nil {
            print(String(curr.getValue()))
            curr = curr.getRight()
        }
    }
    
    // MARK: Init
    
    func Init(top: Node, bot: Node) {
        self.size = 0
        self.top = top
        self.bot = bot
    }
}