//
//  ScrollSegmentStyle.swift
//  ScrollPageControl
//
//  Created by Lawrence on 2017/12/19.
//  Copyright © 2017年 lawrece. All rights reserved.
//

import UIKit

/// 通知使用示例
/**
 override func viewDidLoad() {
 super.viewDidLoad()
 NSNotificationCenter.defaultCenter().addObserver(self
 , selector: #selector(self.didSelectIndex(_:)), name: ScrollPageViewDidShowThePageNotification, object: nil)
 }
 
 func didSelectIndex(noti: NSNotification) {
 let userInfo = noti.userInfo!
 //注意键名是currentIndex
 HPrint(userInfo["currentIndex"])
 }
 
 特别注意的是如果你的控制器是使用的storyBoard初始化, 务必重写这个初始化方法中注册通知监听者, 如果在viewDidLoad中注册,在第一次的时候将不会接受到通知
 required init?(coder aDecoder: NSCoder) {
 super.init(coder: aDecoder)
 NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.didSelectIndex(_:)), name: ScrollPageViewDidShowThePageNotification, object: nil)
 
 }
 func didSelectIndex(noti: NSNotification) {
 let userInfo = noti.userInfo!
 //注意键名是currentIndex
 HPrint(userInfo["currentIndex"])
 }
 */

public struct SegmentStyle {
    
    /// 是否显示遮盖
    public var showCover: Bool = false
    /// 是否显示下划线
    public var showLine: Bool = false
    /// 是否缩放文字
    public var scaleTitle: Bool = false
    /// 是否可以滚动标题
    public var scrollTitle: Bool = true
    /** 是否有垂直分割线 */
    public var hasVerticalSeperatorLine: Bool = false
    /// 是否颜色渐变
    public var gradualChangeTitleColor: Bool = false
    /// 是否显示附加的按钮
    public var showExtraButton: Bool = false
    /// 点击title切换内容的时候是否有动画 默认为true
    public var changeContentAnimated: Bool = true
    /// Segment 整体高度 默认44
    public var SegmentHeight: CGFloat = 44
    /// Segment 背景颜色
    public var SegmentBackgroundColor: UIColor?
    /// Segment 背景图片
    public var SegmentBackgroundImage: UIImage?
    
    public var extraBtnBackgroundImageName: String?
    /// 下面的滚动条的高度 默认2
    public var scrollLineHeight: CGFloat = 2
    /// 下面的滚动条的颜色
    public var scrollLineColor: UIColor = UIColor.brown
    
    /// 遮盖的背景颜色
    public var coverBackgroundColor: UIColor = UIColor.lightGray
    
    /// 遮盖圆角
    public var coverCornerRadius: CGFloat = 14.0
    
    /// cover的高度 默认28
    public var coverHeight: CGFloat = 28.0
    /// 文字间的间隔 默认15
    public var titleMargin: CGFloat = 15
    /// 文字 字体 默认14.0
    public var titleFont = UIFont.systemFont(ofSize: 14.0)
    
    /// 放大倍数 默认1.3
    public var titleBigScale: CGFloat = 1.3
    /// 默认倍数 不可修改
    let titleOriginalScale: CGFloat = 1.0
    
    /// 文字正常状态颜色 请使用RGB空间的颜色值!! 如果提供的不是RGB空间的颜色值就可能crash
    public var normalTitleColor: UIColor = UIColor(red: 51.0/255.0, green: 53.0/255.0, blue: 75/255.0, alpha: 1.0)
    /// 文字选中状态颜色 请使用RGB空间的颜色值!! 如果提供的不是RGB空间的颜色值就可能crash
    public var selectedTitleColor: UIColor = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 121/255.0, alpha: 1.0)
    
    public init() {
        
    }
    
}

