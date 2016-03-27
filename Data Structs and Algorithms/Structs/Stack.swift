//
//  Stack.swift
//  Data Structs and Algorithms
//
//  Created by Michael Hollingshaus on 3/20/16.
//  Copyright © 2016 LittleGiant. All rights reserved.
//

/* ---------------------------------------------------
Copyright (c) 2016 Michael Hollingshaus (LittleGiant)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
------------------------------------------------------ */

import Foundation

/* A Stack is a "simple data structure that allows adding and removing elements in a particular order. Every time an element is added, it goes on the top of the stack; the only element that can be removed is the element that was at the top of the stack. Consequently, a stack is said to have "first in last out" behavior (or "last in, first out"). The first item added to a stack will be the last item removed from a stack." - cprogramming.com */

// After some experimentation, I have found that this is best used in situations requiring rote storage of small amounts of data as addition and removal is simple but actually accessing data isn't used that often.

public struct Node {
    
    // MARK: Node Properties
    
    // value stored inside of the node
    var value: Int!
    
    // represents the element directly before this node
    var left: Node?
    
    // represents the element directly after this node
    var right: Node?
    
    // MARK: Node Functions
    
    /* --- Getters and Setters. Not really necessary in Swift, but is generally good practice to include --- */

    func setValue(value: Int) {
        self.value = value
    }
    
    func getValue() {
        return self.value
    }
    
    func setLeft(left: Node) {
        if left.isEmpty() {
            self.left = nil
            return
        }
        self.left = left
    }
    
    func getLeft() {
        return self.left
    }
    
    func setRight(right: Node) {
        if right.isEmpty() {
            self.right = nil
            return
        }
        self.right = right
    }
    
    func getRight() {
        return self.right
    }
    
    func isEmpty() -> Bool {
        if self.value == nil {
            return true
        }
        return false
    }
    
    // MARK: End of Node struct
}


class Stack {
    
    // MARK: Properties
    
    var size: Int
    var top: Node?
    
    // MARK: Functions
    
    
    // Stores a new element inside of the stack
    func push(newTop: Node) {
        if top != nil {
            self.top.setLeft(newTop)
            newTop.setRight(top)
        }
        
        self.top = newTop
        self.size++
    }
    
    // Pops the top node off of the stack
    func pop() {
        if self.top == nil {
            return
        }
        
        var dummy = Node
        var newTop = self.top.getRight()
        newTop.setLeft(dummy)
        self.top = newTop
        self.size--
    }
    
    // Looks at the value of the top node of the stack
    func peek() -> Int {
        return self.top.getValue()
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
    
    func Init(top: Node) {
        self.size = 0
        self.top = top
    }
}