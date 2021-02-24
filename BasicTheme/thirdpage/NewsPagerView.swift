//
//  NewsPagerView.swift
//  BasicTheme
//
//  Created by 김동준 on 2021/02/23.
//

import Foundation
import UIKit
import SnapKit

class NewsPagerView: BaseView{
    
    lazy var menuBar = UICollectionView()
    lazy var highlightView = UIView()
    
    override func setup() {
        super.setup()
        
        let menuLayout = UICollectionViewFlowLayout()
        menuLayout.scrollDirection = .horizontal
        menuBar = UICollectionView(frame: .zero, collectionViewLayout: menuLayout)
        
        
        addSubViews(menuBar, highlightView)
        
        menuBar.bounces = false
        menuBar.showsHorizontalScrollIndicator = false
        menuBar.backgroundColor = .white
        menuBar.snp.makeConstraints { (make) in
            make.width.equalTo(self)
            make.height.equalTo(50)
            make.top.equalTo(self.snp.top).offset(44)
        }
        
        highlightView.backgroundColor = .black
        highlightView.snp.makeConstraints { (make) in
            make.height.equalTo(3)
            make.top.equalTo(menuBar.snp.bottom).offset(0)
        }
    }
}
