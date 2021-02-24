//
//  NewsViewPageController.swift
//  BasicTheme
//
//  Created by 김동준 on 2021/02/23.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController{
    lazy var newsPagerView = NewsPagerView(frame: view.bounds)
    private let pagerVC = NewsPagerViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: .none)
    private let menuData = MenuCollectionData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsPagerView.menuBar.dataSource = menuData
        newsPagerView.menuBar.delegate = menuData
        newsPagerView.menuBar.register(MenuCell.self, forCellWithReuseIdentifier: "menuCell")
        
        
        pagerVC.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        menuData.pager = pagerVC
        menuData.highlightView = newsPagerView.highlightView
        menuData.view = view
        
        pagerVC.menuData = menuData
        pagerVC.menuBar = newsPagerView.menuBar
        view = newsPagerView
        
        newsPagerView.addSubview(pagerVC.view)
        pagerVC.view.snp.makeConstraints { (make) in
            make.top.equalTo(newsPagerView.highlightView.snp.bottom)
            make.width.equalTo(self.view)
            make.height.equalTo(700)
        }
        
        DispatchQueue.main.async {
            let firstIndexPath = IndexPath(item: 0, section: 0)
            self.newsPagerView.menuBar.scrollToItem(at: firstIndexPath, at: .centeredHorizontally, animated: true)
            self.newsPagerView.menuBar.selectItem(at: firstIndexPath, animated: false, scrollPosition: .centeredHorizontally)
            self.menuData.collectionView(self.newsPagerView.menuBar, didSelectItemAt: firstIndexPath)
        }
       
    }
}
