//
//  Node.swift
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

/* In CS, a node is a device or data point on a larger network. This node is designed to be used as an easily modifiable container structure for whatever data is chosen to be put into it. In this codebase, I have structured the Left node to represent the beginning of a stack or queue (top) and the right node to represent the end of a data struct */

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