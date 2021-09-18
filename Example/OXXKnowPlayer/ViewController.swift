//
//  ViewController.swift
//  know-player
//
//  Created by user on 2021/9/16.
//

import UIKit
import OXXKnowPlayer

class ViewController: UIViewController {

    var player: OXXPlayerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
        
        player = OXXPlayerViewController()
        player?.view.frame = CGRect(x: 40, y: 40, width: 200, height: 100)
        if let p = player {
            view.addSubview(p.view)
        }
        
        let url: String = "http://vjs.zencdn.net/v/oceans.mp4"
        player?.play(url)
    }
    
}

