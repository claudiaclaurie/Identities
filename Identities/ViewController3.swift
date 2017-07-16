//
//  ViewController3.swift


import UIKit

class ViewController3: UIViewController {

    var scrollView = UIScrollView()
    var imageView1 = UIImageView(image: UIImage(named: "claudia.jpg")!)
    var imageView2 = UIImageView(image: UIImage(named: "maia.png")!)
    
    let TitleLabel = UILabel()
    let CaptionLabel1 = UILabel()
    let CaptionLabel2 = UILabel()
    let AboutText = UITextView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.backgroundColor = UIColor.black
        
        //image 1
        imageView1.contentMode = .scaleAspectFill
        imageView1.clipsToBounds = true
        //image 2
        imageView2.contentMode = .scaleAspectFill
        imageView2.clipsToBounds = true
        
        
        self.view.backgroundColor = UIColor.yellow
        
        // label 1
        TitleLabel.text = "About"
        TitleLabel.textAlignment = .center
        TitleLabel.textColor = UIColor.white
        
        //About Text
        AboutText.font = UIFont(name: "HelveticaNeue-Thin", size: 18)
        AboutText.backgroundColor = UIColor.black
        AboutText.textColor = UIColor.white
        AboutText.text = "Our Mission \n \n  Focused on bringing contemporary style to a conservative, academic environment, IDENTITIES Fashion Show at Harvard University offers students unique insight into the fast-paced world of fashion. Our mission goes beyond what we wear: we believe in the ability of fashion as a medium to champion diversity and dialogue. We strive to introduce fashion and its ability to evoke the dynamic trends of today with past modes of art, culture and materiality. We aim to push our audience's perspective on what fashion is and what it represents.\n \n  IDENTITIES centers around the Fasion Innovator of the Year Award, presented annually to an active member of the fashion community who, through his or her innovation and ingenuity, has left a significant impact on the way we view clothing. We honor the designer's vision of the way in which our clothes channel and transform individual modes of expression, as well as clothing's contribution to the broader phenomenological understanding that lies beyond the fabric. Notable past recipients include Jen Kao, Anna Sui, Vera Wang, and Ivan Poupyrev."
        
        // label 2 (caption)
        CaptionLabel1.text = "Profiles: Meet the 2017 Board"
        CaptionLabel1.textColor = UIColor.white
        
        //label 3 (caption)
        CaptionLabel2.text = "Profiles: Meet the 2017 Models"
        //Have text flow onto 2nd line
        CaptionLabel2.lineBreakMode = .byWordWrapping
        CaptionLabel2.numberOfLines = 0
        CaptionLabel2.textColor = UIColor.white
        
        
        
        // Scroll View
        scrollView.alwaysBounceVertical = true
        
        //self.view.addSubview(scrollView)
        self.scrollView.addSubview(imageView1)
        self.scrollView.addSubview(TitleLabel)
        self.scrollView.addSubview(CaptionLabel1)
        self.scrollView.addSubview(imageView2)
        self.scrollView.addSubview(CaptionLabel2)
        self.scrollView.addSubview(AboutText)
        
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //let w = view.bounds.width
        //Position subViews on screen.
        self.scrollView.frame = view.bounds
        self.TitleLabel.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:30)
        self.AboutText.frame = CGRect(x:0,y:30, width:self.view.bounds.width, height: 570)
        self.imageView1.frame = CGRect(x:0, y:600, width: self.view.bounds.width, height: 400)
        self.CaptionLabel1.frame = CGRect(x:4, y: 1000, width: self.view.bounds.width, height: 30)
        self.imageView2.frame = CGRect(x:0, y:1030, width: self.view.bounds.width, height: 400)
        self.CaptionLabel2.frame = CGRect(x: 4, y: 1430, width: self.view.bounds.width, height: 30)
        
        //Sizing the content that shows up on the window of the scrollview- should be size of all the content you want to scroll
        //Moving paper behind window
        self.scrollView.contentSize = CGSize(width: view.bounds.width,
                                             height: CaptionLabel2.frame.origin.y + CaptionLabel2.frame.size.height)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
