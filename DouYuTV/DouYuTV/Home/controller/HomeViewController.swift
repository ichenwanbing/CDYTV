//
//  HomeViewController.swift
//  DouYuTV
//
//  Created by Mac on 16/9/27.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        setUpUI()

    }
    
}


extension HomeViewController {

    func setUpUI() {
        
        setUpNavgation()
    }
    //设置导航条
    private func setUpNavgation() {
        //1.设置左边的item
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        //设置右边的items
        let size = CGSize(width: 40, height: 40)
        //二维码button
        let qrCodeItem = UIBarButtonItem(imageName: "Image_scan", highlightedImageName: "Image_scan_click", size: size)
        //搜索button
        let searchItem = UIBarButtonItem(imageName: "btn_search", highlightedImageName: "btn_search_clicked", size: size)
        //历史button
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highlightedImageName: "Image_my_history_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrCodeItem]
        
        
    }


}
