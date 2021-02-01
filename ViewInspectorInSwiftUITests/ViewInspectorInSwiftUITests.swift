//
//  ViewInspectorInSwiftUITests.swift
//  ViewInspectorInSwiftUITests
//
//  Created by ramil on 01.02.2021.
//

import XCTest
import ViewInspector
@testable import ViewInspectorInSwiftUI

extension ContentView: Inspectable { }

class ViewInspectorInSwiftUITests: XCTestCase {

    func testStringValue() throws {
        let sut = ContentView()
        let value = try sut.inspect().text().string()
        XCTAssertEqual(value, "Hello, ViewInspector!")
    }
}
