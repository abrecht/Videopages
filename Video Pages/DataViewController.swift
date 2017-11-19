//
//  DataViewController.swift
//  Video Pages
//
//  Created by Manuel Abrecht on 11/12/17.
//  Copyright © 2017 Manuel Abrecht. All rights reserved.
//

import UIKit
import AVFoundation

class DataViewController: UIViewController {
    let avPlayer = AVPlayer()
    var avPlayerLayer: AVPlayerLayer!

    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // An AVPlayerLayer is a CALayer instance to which the AVPlayer can
        // direct its visual output. Without it, the user will see nothing.
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        view.layer.insertSublayer(avPlayerLayer, at: 0)
        
        
        let url = NSURL(string: dataObject)
        
        let playerItem = AVPlayerItem(url: url! as URL)
        avPlayer.replaceCurrentItem(with: playerItem)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        avPlayer.play() // Start the playback
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // Layout subviews manually
        avPlayerLayer.frame = view.bounds
    }


}

