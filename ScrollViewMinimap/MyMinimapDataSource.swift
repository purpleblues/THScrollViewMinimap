//
//  MyMinimapDataSource.swift
//  ScrollViewMinimap
//
//  Created by 홍창남 on 2018. 1. 9..
//  Copyright © 2018년 Seong ho Hong. All rights reserved.
//

import UIKit

class MyMinimapDataSource: MinimapDataSource {

    let scrollView: UIScrollView
    let thumbnailImage: UIImage
    let originImageSize: CGSize?
    var borderWidth: CGFloat
    var borderColor: UIColor
    var downSizeRatio: CGFloat

    init(scrollView: UIScrollView, thumbnailImage: UIImage, originImageSize: CGSize?) {
        self.scrollView = scrollView
        self.thumbnailImage = thumbnailImage
        self.originImageSize = originImageSize
        self.borderWidth = 0.0
        self.borderColor = UIColor()
        self.downSizeRatio = 0.0
    }

    func resizeMinimapView(minimapView: MinimapView) {
        let rect = self.scrollViewVisibleSize.divideCGRectByDouble(ratio: self.downSizeRatio)
        minimapView.focusedBoxView?.frame = currentRect(rect: rect)
    }
}

