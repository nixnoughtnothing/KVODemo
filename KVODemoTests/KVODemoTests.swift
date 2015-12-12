//
//  KVODemoTests.swift
//  KVODemoTests
//
//  Created by RyohTsukahara on 11/29/15.
//  Copyright © 2015 test. All rights reserved.
//

import XCTest
@testable import KVODemo

class KVODemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        XCTAssertNotNil(KvoModel.sharedInstance.myDate, "nil check")
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
