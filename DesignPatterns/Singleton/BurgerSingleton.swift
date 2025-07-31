//
//  BurgerSingleton.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

enum BurgerState {
    case raw
    case cooked
}

///
/// > Usage:
/// BurgerSingleton.shared.state = .cooked
///
final class BurgerSingleton {
    static let shared = BurgerSingleton()
    private init() {}
    var state: BurgerState = .raw
}


