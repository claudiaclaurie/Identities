
//
//  ViewController.swift
//  pageViewBlog
//
//  Created by Paul Tangen on 1/26/17.
//  Copyright © 2017 Paul Tangen. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    var scrollView = UIScrollView()
    var imageView1 = UIImageView(image: UIImage(named: "madison.jpg")!)
    var imageView2 = UIImageView(image: UIImage(named: "adesola.jpg")!)
    var imageView3 = UIImageView(image: UIImage(named: "kimi.jpg")!)
    
    let TitleLabel = UILabel()
    let CaptionLabel1 = UILabel()
    let CaptionLabel2 = UILabel()
    let CaptionLabel3 = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.backgroundColor = UIColor.black
        
        //image 1
        imageView1.contentMode = .scaleAspectFill
        imageView1.clipsToBounds = true
        //image 2
        imageView2.contentMode = .scaleAspectFill
        imageView2.clipsToBounds = true
        //image 3
        imageView3.contentMode = .scaleAspectFill
        imageView3.clipsToBounds = true
        
        
        self.view.backgroundColor = UIColor.yellow
        
        // label 1
        TitleLabel.text = "Past Shows"
        TitleLabel.textAlignment = .center
        TitleLabel.textColor = UIColor.white
        
        // label 2 (caption)
        CaptionLabel1.text = "Video: 2017 Show Livestream"
        CaptionLabel1.textColor = UIColor.white
        
        //label 3 (caption)
        CaptionLabel2.text = "Video: 2016 Show Livestream"
        //Have text flow onto 2nd line
        CaptionLabel2.lineBreakMode = .byWordWrapping
        CaptionLabel2.numberOfLines = 0
        CaptionLabel2.textColor = UIColor.white
        
        //label 4 (caption)
        CaptionLabel3.text = "Video: 2015 Show Livestream"
        CaptionLabel3.textColor = UIColor.white
        
        
        
        // Scroll View
        scrollView.alwaysBounceVertical = true
        
        //self.view.addSubview(scrollView)
        self.scrollView.addSubview(imageView1)
        self.scrollView.addSubview(TitleLabel)
        self.scrollView.addSubview(CaptionLabel1)
        self.scrollView.addSubview(imageView2)
        self.scrollView.addSubview(CaptionLabel2)
        self.scrollView.addSubview(imageView3)
        self.scrollView.addSubview(CaptionLabel3)
        
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //let w = view.bounds.width
        //Position subViews on screen.
        self.scrollView.frame = view.bounds
        self.TitleLabel.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:30)
        self.imageView1.frame = CGRect(x:0, y:40, width: self.view.bounds.width, height: 500)
        self.CaptionLabel1.frame = CGRect(x:4, y: 540, width: self.view.bounds.width, height: 30)
        self.imageView2.frame = CGRect(x:0, y:570, width: self.view.bounds.width, height: 500)
        self.CaptionLabel2.frame = CGRect(x: 4, y: 1070, width: self.view.bounds.width, height: 30)
        self.imageView3.frame = CGRect(x:0, y:1100, width: self.view.bounds.width, height: 500)
        self.CaptionLabel3.frame = CGRect(x:4, y: 1600, width: self.view.bounds.width, height:30)
        
        //Sizing the content that shows up on the window of the scrollview- should be size of all the content you want to scroll
        //Moving paper behind window
        self.scrollView.contentSize = CGSize(width: view.bounds.width,
                                             height: CaptionLabel3.frame.origin.y + CaptionLabel3.frame.size.height)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

