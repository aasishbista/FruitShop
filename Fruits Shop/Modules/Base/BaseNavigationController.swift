//
//  BaseNavigationController.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let largeFont = UIFont.font(.helveticaNeue, weight: .light, size: 27.0)
//        let smallFont = UIFont.font(.helveticaNeue, weight: .ultraLight, size: 18.5)
        
        /// set the appearance
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.white
//        appearance.shadowColor = .shadowColor
//        appearance.titleTextAttributes = [.foregroundColor: UIColor.black, .font: smallFont]
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black, .font: largeFont]
        navigationBar.layer.shadowRadius = 6.0
        navigationBar.layer.shadowOpacity = 0.3
        navigationBar.layer.shadowPath = UIBezierPath(rect: navigationBar.bounds).cgPath
        navigationBar.layer.masksToBounds = false
        navigationBar.tintColor = UIColor.gray
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    /// make the status bar light
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    /// When swipe to dismiss happen
    
    deinit {
        debugPrint("De-Initialized --> \(String(describing: self))")
    }
}
