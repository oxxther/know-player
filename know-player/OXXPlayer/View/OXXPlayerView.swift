//
//  OXXPlayerView.swift
//  know-player
//
//  Created by user on 2021/9/17.
//  Copyright © 2021 com.oxxther. All rights reserved.
//

import UIKit
import AVFoundation
import SnapKit

class OXXPlayerView: UIView {

    //MARK: property
    fileprivate lazy var topBarView: OXXTopBarView = {
        let view = OXXTopBarView()
        return view
    }()
    
    fileprivate lazy var bottomBarView: OXXBottomBarView = {
        let view = OXXBottomBarView()
        return view
    }()
    
    fileprivate lazy var loadingView: OXXLoadingView = {
        let view = OXXLoadingView()
        return view
    }()
    
    //MARK: 初始化
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(bottomBarView)
        self.addSubview(topBarView)
        self.addSubview(loadingView)
        
        bottomBarView.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        topBarView.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        loadingView.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        
        oxx_setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: layoutSubview
extension OXXPlayerView{
    func oxx_setupLayout()  {
        bottomBarView.snp.makeConstraints { make in
            make.bottom.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
        
        topBarView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
        
        loadingView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(80)
        }
    }
}

//MARK: setter & getter
extension OXXPlayerView{
   
}
