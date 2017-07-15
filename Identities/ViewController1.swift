import UIKit

class ViewController1: UIViewController{
    var scrollView = UIScrollView()
    var imageView = UIImageView()
    let labelInst = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.backgroundColor = UIColor.cyan
        
        self.view.addSubview(self.scrollView)
        view.addSubview(scrollView)
        
        //image
        var imageView: UIImageView?
        var image: UIImage = UIImage(named: "asia.jpg")!
        imageView = UIImageView(image: image)
        imageView!.frame = CGRect(x:0, y:0, width: self.view.frame.width, height: self.view.frame.height)
        self.scrollView.addSubview(self.imageView)
        
        imageView?.contentMode = .scaleAspectFill
        imageView?.clipsToBounds = true
        
        self.view.backgroundColor = UIColor.yellow
        
        
        
        
        // label
        
        scrollView.addSubview(self.labelInst)
        labelInst.text = "Page 1"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 600).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        
        
        //self.view.addSubview(scrollView)
        self.scrollView.addSubview(imageView!)
        self.scrollView.addSubview(labelInst)
        self.view.addSubview(scrollView)
        
    }
    
    override func viewWillLayoutSubviews() {
        //Position subViews on screen.
        
        self.labelInst.frame = CGRect(x:0,y:0,width:self.view.bounds.width, height:50)
        
        self.imageView.frame = CGRect(x:0, y:20, width: 180, height: 340)
        
        self.scrollView.contentSize = CGSize(width: 200,height: 350)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//

