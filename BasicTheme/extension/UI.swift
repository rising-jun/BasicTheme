//
//  UI.swift
//  BasicTheme
//
//  Created by 김동준 on 2021/02/23.
//

import Foundation
import UIKit

extension UIView{
    func addSubViews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
