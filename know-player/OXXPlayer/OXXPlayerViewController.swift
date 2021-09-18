//
//  OXXPlayerViewController.swift
//  know-player
//
//  Created by user on 2021/9/16.
//  Copyright © 2021 com.oxxther. All rights reserved.
//

import UIKit
import AVFoundation

class OXXPlayerViewController: UIViewController {
    
    //MARK: properties
    fileprivate var player : AVPlayer = AVPlayer()
    fileprivate var playerView : OXXPlayerView = OXXPlayerView()
    
    //MARK: life cycle
    override func loadView() {
        super.loadView()
        playerView.frame = view.frame
        view = playerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        
        
    }

}

//MARK: public
extension OXXPlayerViewController {
    func play(_ url: String) {
        guard let _url = URL(string: url) else {
            return
        }
        let item = AVPlayerItem(url: _url)
        player.replaceCurrentItem(with: item)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = playerView.bounds
        playerView.layer.insertSublayer(playerLayer, at: 0)
        player.play()
    }
}

