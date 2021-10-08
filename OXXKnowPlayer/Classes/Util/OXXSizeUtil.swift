//
//  OXXSizeUtil.swift
//  OXXKnowPlayer
//
//  Created by user on 2021/9/23.
//  Copyright © 2021 com.oxxther. All rights reserved.
//

import UIKit

public class OXXSizeUtil: NSObject {
    
    public static let oxx_ScreenWidth = UIScreen.main.bounds.size.width
    
    public static let oxx_SafeAreaHeight : CGFloat = {
        var statusBarHeight = UIApplication.shared.statusBarFrame.size.height
        if #available(iOS 11.0, *) {
            return UIApplication.shared.keyWindow?.safeAreaInsets.top ?? statusBarHeight
        } else {
            return statusBarHeight
        }
    }()
}
