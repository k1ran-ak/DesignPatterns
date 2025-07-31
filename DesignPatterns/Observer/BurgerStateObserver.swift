//
//  BurgerStateObserver.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

enum OrderStatus {
    case pending
    case processing
    case ready
    case delivered
}

protocol BurgerOrderDelegate: AnyObject {
    func didUpdate(state: OrderStatus)
}

class Cook {
    weak var delegate: BurgerOrderDelegate?
    

    func orderPlaced() {
        delegate?.didUpdate(state: .pending)
    }
    
    func cooking() {
        delegate?.didUpdate(state: .processing)
    }
    
    func cookingComplete() {
        delegate?.didUpdate(state: .ready)
    }
}

class DeliveryStatusBoard: BurgerOrderDelegate {
  
    func didUpdate(state: OrderStatus) {
        print("Order Status: \(state)")
    }
}
