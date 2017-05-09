//
//  DouYuViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/9.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

class DouYuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "斗鱼"
        view.backgroundColor = UIColor.white
        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64 - 44)
        let titles = ["推荐", "手游", "娱乐", "游戏", "趣玩"]
        let style = HQTitleStyle()
        style.normalColor = (0,0,0)
        style.selectedColor = (255, 97, 0)
        style.titleHeight = 35
        style.indicatorViewH = 3
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
