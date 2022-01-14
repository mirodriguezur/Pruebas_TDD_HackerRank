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
        let expectedDataNode = " 2"
        //when
        let node: Node? = insert(head: head, data: nodeData)
        //then
        XCTAssertNotNil(node)
        XCTAssertEqual(expectedNode, node)
        XCTAssertEqual(expectedDataNode, display(head: node))
    }
    
    func test_insert_notNullHead_createsNewNode () {
        //given
        let nodeDataHead = 2
        let head = Node(data: nodeDataHead)
        let nodeData = 3
        let expectedDataNode = " 2 3"
        //when
        let _: Node? = insert(head: head, data: nodeData)
        //then
        XCTAssertEqual(expectedDataNode, display(head: head))
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
    var headNode = head
    let nextNode = Node(data: data)
    
    if (headNode == nil) {
        headNode = Node(data: data)
        return headNode
    }
    
    headNode?.next = nextNode
    
    return headNode
}

func display(head: Node?) -> String {
    var current = head
    var result = String()

    while current != nil {
        result = result + " " + "\(current!.data)"
        current = current!.next
    }
    
    return result
}
