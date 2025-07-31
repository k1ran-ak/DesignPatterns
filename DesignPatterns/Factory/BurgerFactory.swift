//
//  BurgerFactory.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

fileprivate class Burger {
    
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
    
    func createCheeseBurger() -> Burger {
        let ingredients = ["cheese", "bun", "lettuce", "tomato"]
        return Burger(ingredients: ingredients)
    }
    
    func createVeggieBurger() -> Burger {
        let ingredients = ["veggie", "bun", "onion", "carrot", "lettuce", "tomato"]
        return Burger(ingredients: ingredients)
    }
}
