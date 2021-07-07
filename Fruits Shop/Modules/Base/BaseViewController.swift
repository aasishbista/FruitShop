//
//  BaseViewController.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

class BaseViewController:UIViewController{
    
    var baseView:BaseView
    var baseViewModel:BaseViewModel
    
    init(baseView:BaseView,baseViewModel:BaseViewModel){
        self.baseView = baseView
        self.baseViewModel = baseViewModel
        super.init(nibName: nil, bundle: nil)
        
    }
    override func loadView() {
        super.loadView()
        view = baseView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        observeEvents()
        
    }
    
    func setupUI(){}
    
    func observeEvents(){}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        debugPrint("De-initialized -> \(String(describing: self))")
    }
    
}
