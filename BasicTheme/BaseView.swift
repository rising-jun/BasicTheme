//
//  BaseView.swift
//  BasicTheme
//
//  Created by 김동준 on 2021/02/23.
//

import Foundation
import UIKit

class BaseView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        backgroundColor = .white
    }
}
