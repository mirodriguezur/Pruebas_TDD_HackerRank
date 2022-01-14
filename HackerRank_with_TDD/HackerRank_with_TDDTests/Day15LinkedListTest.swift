//
//  Day15LinkedListTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 13/01/22.
//

import XCTest

class Day15LinkedListTest: XCTestCase {
    
    func test_insert_nullHead_createsFirstNode () {
        //given
        let head: Node? = nil
        let nodeData = 2
        let expectedNode: Node? = Node(data: nodeData)
        //when
        let node: Node? = insert(head: head, data: nodeData)
        //then
        XCTAssertNotNil(node)
        XCTAssertEqual(expectedNode, node)
    }
    
}

extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.data == rhs.data && lhs.next == rhs.next
    }
    
}

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    var newNode: Node?
    
    if (head == nil) {
        newNode = Node(data: data)
    }
    return newNode
}

func display(head: Node?) -> String {
    var current = head
    var result = ""

    while current != nil {
        result = result + "\(current!.data)"
        current = current!.next
    }
    
    return result
}
