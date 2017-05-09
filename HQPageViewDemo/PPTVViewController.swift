//
//  PPTVViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/9.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

class PPTVViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PPTV"
        view.backgroundColor = UIColor.white
        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64 - 44)
        let titles = ["私人订制", "推荐", "电视剧", "电影", "体育", "动漫", "少儿", "综艺", "VIP尊享"]
        let style = HQTitleStyle()
        style.isScrollEnable = true
        style.normalColor = (0,0,0)
        style.selectedColor = (255, 255, 255)
        style.isShowIndicatorView = false
        style.isShowCover = true
        style.coverBgColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
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
