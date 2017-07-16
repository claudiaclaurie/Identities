import UIKit

class ViewController1: UIViewController{
    var scrollView = UIScrollView()
    var imageView1 = UIImageView(image: UIImage(named: "asia.jpg")!)
    var imageView2 = UIImageView(image: UIImage(named: "ivan.jpg")!)
    var imageView3 = UIImageView(image: UIImage(named: "makeup.jpg")!)
    var imageView4 = UIImageView(image: UIImage(named: "claudia.jpg")!)
    let TitleLabel = UILabel()
    let CaptionLabel1 = UILabel()
    let CaptionLabel2 = UILabel()
    let CaptionLabel3 = UILabel()
    let CaptionLabel4 = UILabel()
    
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
        //image 4
        imageView4.contentMode = .scaleAspectFill
        imageView4.clipsToBounds = true
        
        self.view.backgroundColor = UIColor.yellow
        
        // label 1
        TitleLabel.text = "Featured"
        TitleLabel.textAlignment = .center
        TitleLabel.textColor = UIColor.white
        
        //TEXT BOX FOR ABOUT
        
        
        // label 2 (caption)
        CaptionLabel1.text = "Gallery: Highlights from the Runway"
        CaptionLabel1.textColor = UIColor.white
        
        //label 3 (caption)
        CaptionLabel2.text = "Google x Identities: Ivan Poupyrev demo's Project Jacquard"
        //Have text flow onto 2nd line
        CaptionLabel2.lineBreakMode = .byWordWrapping
        CaptionLabel2.numberOfLines = 0
        CaptionLabel2.textColor = UIColor.white
        
        //label 4 (caption)
        CaptionLabel3.text = "Gallery: Behind the Scenes 2017"
        CaptionLabel3.textColor = UIColor.white
        
        //Label 5 (caption)
        CaptionLabel4.text = "Meet the Board 2017"
        CaptionLabel4.textColor = UIColor.white

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
        self.scrollView.addSubview(imageView4)
        self.scrollView.addSubview(CaptionLabel4)
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //let w = view.bounds.width
        //Position subViews on screen.
        self.scrollView.frame = view.bounds
        self.TitleLabel.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:30)
        self.imageView1.frame = CGRect(x:0, y:30, width: self.view.bounds.width, height: 500)
        self.CaptionLabel1.frame = CGRect(x:4, y: 530, width: self.view.bounds.width, height: 30)
        self.imageView2.frame = CGRect(x:0, y:560, width: self.view.bounds.width, height: 500)
        self.CaptionLabel2.frame = CGRect(x: 4, y: 1060, width: self.view.bounds.width, height: 50)
        self.imageView3.frame = CGRect(x:0, y:1120, width: self.view.bounds.width, height: 500)
        self.CaptionLabel3.frame = CGRect(x:4, y: 1620, width: self.view.bounds.width, height:30)
        self.imageView4.frame = CGRect(x:0, y:1650, width:self.view.bounds.width, height:500)
        self.CaptionLabel4.frame = CGRect(x:4, y:2150, width: self.view.bounds.width, height: 30)
        //Sizing the content that shows up on the window of the scrollview- should be size of all the content you want to scroll
        //Moving paper behind window
        self.scrollView.contentSize = CGSize(width: view.bounds.width,
                                             height: CaptionLabel4.frame.origin.y + CaptionLabel4.frame.size.height)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//

