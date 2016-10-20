//
//  UIBarButtonItem+Extension.swift
//  DouYuTV
//
//  Created by Mac on 16/10/20.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    //在扩展系统类的方法时建议用便利构造方法代替类方法
    //1. convenience开头 2.必须要明确的调用系统设计的的构造函数函数
    convenience init(imageName:String ,highlightedImageName:String = "",size:CGSize = CGSize.zero) {
        //如果外面没有穿值取等号后面的默认值 而且会多一个只有imageName参数的构造函数方便调用
        
        let btn = UIButton()
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        if highlightedImageName != "" {
            btn.setImage(UIImage.init(named: highlightedImageName), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: .zero, size: size)
        }
        
        //调用系统设计的构造函数
        self.init(customView:btn)
        
    }
}
