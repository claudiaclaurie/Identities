//
//  HomeViewController.swift
//  Identities
//
//  Created by laurie on 6/10/17.
//  Copyright © 2017 claudialaurie. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class HomeViewController: UIViewController {
    // MARK: Properties
    var avPlayer: AVPlayer!
    var avPlayerLayer: AVPlayerLayer!
    var paused: Bool = false
    
    var enterButton: UIButton! = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome"
        
        let theURL = Bundle.main.url(forResource:"hannah", withExtension: "mp4")
        
        avPlayer = AVPlayer(url: theURL!)
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        avPlayer.volume = 0
        avPlayer.actionAtItemEnd = .none
        
        avPlayerLayer.frame = view.layer.bounds
        view.backgroundColor = .clear
        view.layer.insertSublayer(avPlayerLayer, at: 0)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidReachEnd(notification:)),
                                               name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                               object: avPlayer.currentItem)
        
        
        
        
        self.enterButton.layer.cornerRadius = 6
        // Add buttons to the screen.
        self.view.addSubview(self.enterButton)
             //@objc     // Possition the buttons.
                self.enterButton.frame = CGRect(x:view.bounds.width / 2 - 115, y:view.bounds.width / 2 + 300, width:225, height:50)
       // womensButton.frame =  CGRectMake(view.bounds.width / 2 - 115 , view.bounds.width / 2, 225, 50)
        // Button actions.
        self.enterButton.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        //self.womensButton.addTarget(self, action: #selector(SGViewController.womensButtonPressed), forControlEvents: UIControlEvents.TouchUpInside)
        // Button styles.
        //        self.mensButton.backgroundColor = UIColor.lightGrayColor()
        self.enterButton.backgroundColor = UIColor.lightGray
        //        self.mensButton.layer.borderWidth = 3.0
        self.enterButton.layer.borderWidth = 3.0
        let mauve = UIColor(red: 229/255, green: 225/255, blue: 239/255, alpha: 1.0)
        //        self.mensButton.layer.borderColor = mauve.CGColor
        self.enterButton.layer.borderColor = mauve.cgColor
        
        //        self.mensButton.setTitle("Menswear", forState: UIControlState.Normal)
        //        self.mensButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Thin", size: 25)
        self.enterButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Thin", size: 25)
        self.enterButton.setTitle("ENTER", for: UIControlState.normal)
    }
    
    func playerItemDidReachEnd(notification: Notification) {
        let p: AVPlayerItem = notification.object as! AVPlayerItem
        p.seek(to: kCMTimeZero)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        avPlayer.play()
        paused = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        avPlayer.pause()
        paused = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func enterButtonPressed() {
        present(PageViewController(), animated: true, completion: nil)
    }
    
    
}
