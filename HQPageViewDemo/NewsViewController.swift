//
//  NewsViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/9.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "网易新闻"
        view.backgroundColor = UIColor.white
        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64 - 44)
        let titles = ["头条", "独家", "网易公开课", "热点", "体育", "NBA", "云课堂", "国际足球"]
        let style = HQTitleStyle()
        style.isScrollEnable = true
        style.normalColor = (0,0,0)
        style.selectedColor = (255, 0, 0)
        style.isShowIndicatorView = false
        style.isNeedScale = true
        style.scaleRange = 1.4
        var childVcs = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        let pageView = HQPageView(frame: frame, titles: titles, style: style, childVcs: childVcs, parentVc: self)
        
        view.addSubview(pageView)
    }

}
