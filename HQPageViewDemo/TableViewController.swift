//
//  TableViewController.swift
//  HQPageViewDemo
//
//  Created by 郝庆 on 2017/5/9.
//  Copyright © 2017年 Enroute. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var titles = ["网易云音乐", "网易新闻", "PPTV", "斗鱼", "表情键盘布局"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")!
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            navigationController?.pushViewController(MusicViewController(), animated: true)
        } else if indexPath.row == 1 {
            navigationController?.pushViewController(NewsViewController(), animated: true)
        } else if indexPath.row == 2 {
            navigationController?.pushViewController(PPTVViewController(), animated: true)
        } else if indexPath.row == 3 {
            navigationController?.pushViewController(DouYuViewController(), animated: true)
        } else {
            navigationController?.pushViewController(GiftViewController(), animated: true)
        }
    }

}
