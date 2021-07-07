//
//  BaseCoordinator.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
protocol Coordinator{
    func start()
}
class BaseCoordinator:Coordinator{
    func start() {
        
    }
    
    
    
    
    deinit {
        debugPrint("De-initialized -> \(String(describing: self))")
    }
}
