//
//  HomeController.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

class HomeController:BaseViewController{
    
    lazy var screenView:HomeView = {
        baseView as! HomeView
    }()
    
    lazy var viewModel:HomeViewModel = {
       baseViewModel as! HomeViewModel
    }()
    
}
