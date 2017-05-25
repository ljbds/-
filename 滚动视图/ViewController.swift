//
//  ViewController.swift
//  滚动视图
//
//  Created by 李建兵 on 2017/5/22.
//  Copyright © 2017年 李建兵. All rights reserved.
//

import UIKit
//添加scorllview

let scorllview = UIScrollView()
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.bounds当前屏幕的大小和位置
        //设置大小和位置
scorllview.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width*4, height: self.view.bounds.size.height)
        //背景颜色
        scorllview.backgroundColor = UIColor.yellow
        //设置滚动条
        //是否显示水平滚动条
        scorllview.showsHorizontalScrollIndicator = true
        //是否显示竖直滚动条
        scorllview.showsVerticalScrollIndicator = true
        //设置分页
        scorllview.isPagingEnabled = true
        //设置是否可以拉出空白区域
        scorllview.bounces = true
        //默认false。如果TRUE并且bounces也是TRUE   即使内容尺寸比scorllview的尺寸小，也能水平推动
        scorllview.alwaysBounceHorizontal = false
        //在scorllview的内容周围添加 一个附件的区域
        scorllview.contentInset = UIEdgeInsetsMake(30, 30, 30, 30)
        //设置指示器（滚动条）的样式
        scorllview.indicatorStyle = UIScrollViewIndicatorStyle.black
        //最小的缩放倍数，默认值为1.0
        scorllview.minimumZoomScale = 0.2
        //放大的缩放倍数，默认值为1.0
        scorllview.maximumZoomScale = 100
        //添加图片到scrollview
        scorllview.delegate = self as? UIScrollViewDelegate
        scorllview.frame = self.view.bounds
        let imgv1 = UIImageView(image: UIImage(named: "1"))
        //scorllview.contentSize = imageView.bounds.size;
        //let imgv2 = UIImageView(image: UIImage(named: "2"))
       // let imgv3 = UIImageView(image: UIImage(named: "4"))
       // let imgv4 = UIImageView(image: UIImage(named: "mv"))
        //打开用户交互
        imgv1.isUserInteractionEnabled = true
        //设置图片大小和位置
        /*imgv1.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.height)
        imgv2.frame = CGRect(x: self.view.bounds.size.width, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        imgv3.frame = CGRect(x: self.view.bounds.size.width*2, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        imgv4.frame = CGRect(x: self.view.bounds.size.width*3, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)*/
        scorllview.addSubview(imgv1)
       // scorllview.addSubview(imgv3)
      //  scorllview.addSubview(imgv2)
       // scorllview.addSubview(imgv1)
        //设置代理
        //scorllview.delegate = self as? UIScrollViewDelegate
       //
        self.view.addSubview(scorllview)
    
    
    
    }
    func scrollViewDidScroll(scorllview:UIScrollView)
    {
        print("x:\(scorllview.contentOffset.x) y:\(scorllview.contentOffset.y)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

