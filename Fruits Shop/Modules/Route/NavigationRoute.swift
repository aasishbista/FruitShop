//
//  NavigationRoute.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

public protocol Route{
    associatedtype Controller
    
    var rootController:Controller {get set}
    init(rootController:Controller)
}

final class NavigationRoute:Route{
    
    typealias Controller = UINavigationController
    
    var rootController:UINavigationController
    
    public init(rootController:UINavigationController){
        
        self.rootController = rootController
    }
    
    func setRoot(controller:UIViewController){
        rootController.setViewControllers([controller], animated: false)
    }
    
    
    func push(controller:UIViewController){
        
        rootController.pushViewController(controller, animated: true)
    }
 
    
}
