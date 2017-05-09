//
//  MusicViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/9.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "网易云音乐"
        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64 - 44)
        let titles = ["个性推荐", "歌单", "主播电台", "排行榜"]
        let style = HQTitleStyle()
        style.normalColor = (0,0,0)
        style.selectedColor = (255, 0, 0)
        style.indicatorViewH = 2
        style.isGradualChangeEnabel = false
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
