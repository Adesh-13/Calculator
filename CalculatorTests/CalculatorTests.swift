//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Adesh Newaskar on 04/06/25.
//


import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    var viewModel: CalculatorViewModel!

    override func setUp() {
        super.setUp()
        viewModel = CalculatorViewModel()
    }

    func testAddition() {
        viewModel.calculate(5, 3, operation: .add)
        XCTAssertEqual(viewModel.result, 8)
    }

    func testSubtraction() {
        viewModel.calculate(5, 3, operation: .subtract)
        XCTAssertEqual(viewModel.result, 2)
    }

    func testMultiplication() {
        viewModel.calculate(5, 3, operation: .multiply)
        XCTAssertEqual(viewModel.result, 15)
    }

    func testDivision() {
        viewModel.calculate(6, 3, operation: .divide)
        XCTAssertEqual(viewModel.result, 2)
    }

    func testDivisionByZero() {
        viewModel.calculate(6, 0, operation: .divide)
        XCTAssertEqual(viewModel.result, 0)
    }
}

