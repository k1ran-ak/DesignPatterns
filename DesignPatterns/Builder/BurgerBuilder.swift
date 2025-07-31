//
//  BurgerBuilder.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

fileprivate class Burger {
    
    var bun: String?
    var patty: String?
    var cheese: String?
    
    func setBun(_ bun: String) {
        self.bun = bun
    }
    
    func setPatty(_ patty: String) {
        self.patty = patty
    }
    
    func setCheese(_ cheese: String) {
        self.cheese = cheese
    }
}

///
/// > Usage:
/// let burgerBuilder = BurgerBuilder()
/// let burger = burgerBuilder
///    .setBun("White")
///    .setPatty("Chicken")
///    .setCheese("American")
///    .build()
///
///

fileprivate class BurgerBuilder {
    var burger: Burger = Burger()
    
    func setBun(_ bun: String) -> Self {
        burger.setBun(bun)
        return self
    }
    
    func setPatty(_ patty: String) -> Self {
        burger.setPatty(patty)
        return self
    }
    
    func setCheese(_ cheese: String) -> Self {
        burger.setCheese(cheese)
        return self
    }
    
    func build() -> Burger {
        return burger
    }
}
