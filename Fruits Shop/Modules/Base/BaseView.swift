//
//  BaseView.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import Foundation
import UIKit

class BaseView:UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        create()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func create(){
        backgroundColor = UIColor.white
    }
    
    deinit {
        debugPrint("De-initialized -> \(String(describing: self))")
    }
}
