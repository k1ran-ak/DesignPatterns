//
//  BurgerFactory.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

class SimpleBurger {
    
    var ingredients: [String]
    
    init(ingredients: [String]) {
        self.ingredients = ingredients
    }
}

///
///
/// > Usage:
/// let burgerFactory = BurgerFactory()
/// burgerFactory.createCheeseBurger()
/// burgerFactory.createVeggieBurger()
///
///
fileprivate class BurgerFactory {
    
    func createCheeseBurger() -> SimpleBurger {
        let ingredients = ["cheese", "bun", "lettuce", "tomato"]
        return SimpleBurger(ingredients: ingredients)
    }
    
    func createVeggieBurger() -> SimpleBurger {
        let ingredients = ["veggie", "bun", "onion", "carrot", "lettuce", "tomato"]
        return SimpleBurger(ingredients: ingredients)
    }
}
