//
//  AppCoordinator.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

class AppCoordinator:BaseCoordinator{
    
    private let route:NavigationRoute
    
    init(route:NavigationRoute){
        self.route = route
    }
    
    override func start() {
        performRedirection()
        
    }
    
    func performRedirection(){
        let baseView = HomeView()
        let baseViewModel = HomeViewModel()
        let controller = HomeController(baseView: baseView, baseViewModel: baseViewModel)
        route.push(controller: controller)
    }
}
