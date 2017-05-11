//
//  GiftViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/11.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

private let kEmoticonCell = "kEmoticonCell"

class GiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        title = "PageCollectionViewLayout"
        let pageFrame = CGRect(x: 0, y: 200, width: view.bounds.width, height: 300)
        let titles = ["土豪", "热门", "专属", "常见"]
        let style = HQTitleStyle()
        style.isShowIndicatorView = true
        style.backgroundColor = UIColor.yellow
        
        let layout = HQPageCollectionViewLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        layout.cols = 4
        layout.rows = 2
        
        let pageCollectionView = HQPageCollectionView(frame: pageFrame, titles: titles, style: style, isTitleInTop: false, layout: layout)
        
        pageCollectionView.dataSource = self
        pageCollectionView.register(cell: UICollectionViewCell.self, identifier: kEmoticonCell)
        
        view.addSubview(pageCollectionView)
        view.backgroundColor = UIColor.white
    }

}

extension GiftViewController: HQPageCollectionViewDataSource {
    func numberOfSections(in pageCollectionView: HQPageCollectionView) -> Int {
        return 4
    }
    
    func pageCollectionView(_ collectionView: HQPageCollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0 {
            return 20
        } else if section == 1{
            return 14
        } else if section == 2{
            return 10
        }else {
            return 22
        }
    }
    
    func pageCollectionView(_ pageCollectionView: HQPageCollectionView, _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kEmoticonCell, for: indexPath)
        
        cell.backgroundColor = UIColor.randomColor()
        
        return cell
    }
}
