//
//  ContentViewController.swift
//  Identities
//
//  Created by laurie on 6/10/17.
//  Copyright © 2017 claudialaurie. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    lazy var categoryTitle : UILabel = {
        let _categoryTitle = UILabel();
        _categoryTitle.font = UIFont(name: "HelveticaNeue-Thin", size: 25)
        _categoryTitle.textAlignment = NSTextAlignment.center
        return _categoryTitle;
        
    }()
    
    lazy var categoryIntro : UITextView = {
        let _categoryIntro = UITextView();
        _categoryIntro.font = UIFont(name: "HelveticaNeue-Thin", size: 18)
        _categoryIntro.isEditable = false
        return _categoryIntro;
    }()
    
    lazy var imageView : UIImageView = {
        let _imageView = UIImageView();
        _imageView.contentMode = .scaleAspectFill
        _imageView.clipsToBounds = true
        return _imageView;
    }()
    
    
    
    lazy var categoryParagraph : UITextView = {
        let _categoryParagraph = UITextView();
        _categoryParagraph.font = UIFont(name: "HelveticaNeue-Thin", size: 18)
        _categoryParagraph.textAlignment = NSTextAlignment.left
        _categoryParagraph.isEditable = false
        return _categoryParagraph;
    }()
    
    lazy var scrollView : UIScrollView = {
        let _scrollView = UIScrollView();
        _scrollView.frame = self.view.bounds
        _scrollView.backgroundColor = UIColor.white
        return _scrollView;
        
    }()
    
    let contentName:String
    
    init(contentName:String) {
        self.contentName = contentName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        // Call the UIViewController code first, before we run ours.
        super.viewDidLoad()
        
        self.view.addSubview(self.scrollView)
        self.scrollView.addSubview(self.categoryParagraph)
        
        self.view.backgroundColor = UIColor.white
        // Init things that will go in the stack view.
        let image: UIImage = UIImage(named: contentName)!
        imageView.image = image
        
        
        view.addSubview(scrollView)
        
        // Add subViews to screen.
        self.view.addSubview(scrollView)
        scrollView.addSubview(categoryTitle)
        scrollView.addSubview(categoryIntro)
        scrollView.addSubview(imageView)
        scrollView.addSubview(categoryParagraph)
        
        
        // Load content to views.
        //self.loadContent(contentName)
    }
    
    func sizeTextView(textView:UITextView) {
        let newSize = textView.sizeThatFits(CGSize(width: self.view.bounds.width, height: CGFloat.greatestFiniteMagnitude))
        var newFrame = textView.frame
        newFrame.size = CGSize(width: max(newSize.width, self.view.bounds.width), height: newSize.height)
        textView.frame = newFrame
    }
    
    
    
    override func viewWillLayoutSubviews() {
        //Position subViews on screen.
        //
        /*self.categoryTitle.frame = CGRectMake(0,
                                              0,
                                              self.view.bounds.width,
                                              50)
        
        self.categoryIntro.frame = CGRectMake(0,
                                              self.categoryTitle.frame.origin.y + self.categoryTitle.frame.size.height,
                                              0,
                                              0);
        sizeTextView(self.categoryIntro)
        self.imageView.frame = CGRectMake(0,
                                          self.categoryIntro.frame.origin.y + self.categoryIntro.frame.size.height,
                                          self.view.bounds.width,
                                          450);
        self.categoryParagraph.frame = CGRectMake(0,
                                                  self.imageView.frame.origin.y + self.imageView.frame.size.height,
                                                  0,
                                                  0);
        
        sizeTextView(self.categoryParagraph)
        
        scrollView.contentSize = CGSize(width: self.view.bounds.width,
                                        height: categoryIntro.frame.size.height + categoryParagraph.frame.size.height + categoryTitle.frame.size.height + imageView.frame.size.height)
        
    }*/
    
    /*func loadContent(fileName:String) {
        let dict = NSDictionary(contentsOfFile: Bundle.mainBundle().pathForResource(fileName, ofType: "strings")!)
        
        self.categoryTitle.text = dict!["header"] as?String
        self.categoryIntro.text = dict!["intro"] as! String
        self.categoryParagraph.text = dict!["body"] as! String
        
    }*/
}
}


