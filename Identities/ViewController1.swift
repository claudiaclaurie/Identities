import UIKit

class ViewController1: UIViewController{
    var scrollView = UIScrollView()
    var imageView1 = UIImageView(image: UIImage(named: "asia.jpg")!)
    let TitleLabel = UILabel()
    let CaptionLabel1 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.backgroundColor = UIColor.cyan
        
        //image
        
        imageView1.contentMode = .scaleAspectFill
        imageView1.clipsToBounds = true
        
        self.view.backgroundColor = UIColor.yellow
        
        // label 1
        TitleLabel.text = "Featured"
        TitleLabel.textAlignment = .center
        
        // label 2 (caption)
        CaptionLabel1.text = "Gallery: Highlights from the Runway"

        // Scroll View
        scrollView.alwaysBounceVertical = true

        //self.view.addSubview(scrollView)
        self.scrollView.addSubview(imageView1)
        self.scrollView.addSubview(TitleLabel)
        self.scrollView.addSubview(CaptionLabel1)
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //let w = view.bounds.width
        //Position subViews on screen.
        self.scrollView.frame = view.bounds
        self.TitleLabel.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:50)
        self.imageView1.frame = CGRect(x:0, y:40, width: self.view.bounds.width, height: 500)
        self.CaptionLabel1.frame = CGRect(x:4, y: 550, width: self.view.bounds.width, height: 30)
        //Sizing the content that shows up on the window of the scrollview- should be size of all the content you want to scroll
        //Moving paper behind window
        self.scrollView.contentSize = CGSize(width: view.bounds.width,
                                             height: CaptionLabel1.frame.origin.y + CaptionLabel1.frame.size.height)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//

