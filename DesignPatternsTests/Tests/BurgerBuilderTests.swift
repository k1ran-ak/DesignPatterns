//
//  BurgerBuilderTests.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation
import XCTest
@testable import DesignPatterns  // adjust to your module name

final class BurgerBuilderTests: XCTestCase {

    func testDefaultBurgerHasNilComponents() {
        let builder = BurgerBuilder()
        let burger = builder.build()
        
        // By default nothing should be set
        XCTAssertNil(burger.bun, "Default bun should be nil")
        XCTAssertNil(burger.patty, "Default patty should be nil")
        XCTAssertNil(burger.cheese, "Default cheese should be nil")
    }

    func testSettingAllComponents() {
        let builder = BurgerBuilder()
            .setBun("Sesame")
            .setPatty("Beef")
            .setCheese("Cheddar")
        let burger = builder.build()
        
        XCTAssertEqual(burger.bun, "Sesame")
        XCTAssertEqual(burger.patty, "Beef")
        XCTAssertEqual(burger.cheese, "Cheddar")
    }

    func testFluentChainingReturnsSameBuilder() {
        let builder = BurgerBuilder()
        // chaining should return the same builder instance so interface is fluent
        let returned = builder.setBun("Rye")
            .setPatty("Turkey")
            .setCheese("Swiss")
        XCTAssertTrue(returned === builder, "Chained calls should return the same builder instance")
    }

    func testPartialBuild() {
        let builder = BurgerBuilder()
            .setBun("Wholegrain")
            .setPatty("Veggie")
        let burger = builder.build()
        
        XCTAssertEqual(burger.bun, "Wholegrain")
        XCTAssertEqual(burger.patty, "Veggie")
        XCTAssertNil(burger.cheese, "Cheese was not set and should remain nil")
    }

    func testReusingBuilderReflectsOnSameBurger() {
        let builder = BurgerBuilder()
            .setBun("White")
        let firstBurger = builder.build()
        XCTAssertEqual(firstBurger.bun, "White")
        // mutate further via same builder
        builder.setPatty("Chicken")
        let secondBurger = builder.build()
        XCTAssertEqual(secondBurger.patty, "Chicken")
        // both references point to same underlying burger, so change is visible
        XCTAssertTrue(firstBurger === secondBurger, "build() should return same burger instance when reusing builder")
    }

    func testSeparateBuildersAreIndependent() {
        let builderA = BurgerBuilder()
            .setBun("Black")
        let builderB = BurgerBuilder()
            .setBun("GlutenFree")
        
        let burgerA = builderA.build()
        let burgerB = builderB.build()
        
        XCTAssertEqual(burgerA.bun, "Black")
        XCTAssertEqual(burgerB.bun, "GlutenFree")
        XCTAssertFalse(burgerA === burgerB, "Different builders should produce distinct burger instances")
    }
}
