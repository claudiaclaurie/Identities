import UIKit

class ViewController1: UIViewController{
    var scrollView = UIScrollView()
    var imageView = UIImageView(image: UIImage(named: "asia.jpg")!)
    let labelInst = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.backgroundColor = UIColor.cyan
        
        //image
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        self.view.backgroundColor = UIColor.yellow
        
        // label
        labelInst.text = "Page 1"

        // Scroll View
        scrollView.alwaysBounceVertical = true

        //self.view.addSubview(scrollView)
        self.scrollView.addSubview(imageView)
        self.scrollView.addSubview(labelInst)
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        //Position subViews on screen.
        self.scrollView.frame = view.bounds
        self.labelInst.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:50)
        self.imageView.frame = CGRect(x:0, y:20, width: 180, height: 340)
        self.scrollView.contentSize = CGSize(width: view.bounds.width,
                                             height: imageView.frame.origin.y + imageView.frame.size.height)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//

