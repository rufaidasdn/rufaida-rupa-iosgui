//
//  RufaidaGUITests.swift
//  RufaidaGUITests
//
//  Created by Md Shahed Hossain on 16/12/2019.
//  Copyright © 2019 Medical Systems Company Ltd. All rights reserved.
//

import XCTest
@testable import RufaidaGUI

class RufaidaGUITests: XCTestCase {

    var hello: HelloWorld!
    var nome: String!
    
    override func setUp() {
        self.hello = HelloWorld()
        self.nome = "World"
    }

    override func tearDown() {
        //MARK: TODO
    }

    func testHello() {
        XCTAssertEqual(self.hello.hello(self.nome), "Hello, World!")
    }

    func testPerformanceHello() {
        self.measure {
            self.hello.info(self.nome)
        }
    }

}
