//
//  test.swift
//  PropertyWrappers
//
//  Created by LACKY on 25.02.2022.
//

import XCTest
 
class PropertyWrappersTests: XCTestCase {
    func test_stringMustBeCamelStyle() {
        let string1 = "test camel case"
        let camelCase1 = CamelCasePropertyTest(string: string1)
        XCTAssertEqual(camelCase1.string, "testCamelCase")
    }
    
}


extension PropertyWrappersTests {
    private struct CamelCasePropertyTest {
        @CamelCaseProperty var string: String
    }
}
