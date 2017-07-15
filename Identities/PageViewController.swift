

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pages = [UIViewController]()
    let pageControl = UIPageControl()
    var frame: CGRect = CGRect(x:0, y:0, width:0, height:0)
    //let scrollView = UIScrollView(frame: CGRect(x:0, y:0, width:320, height:480 ))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        //scrollView.isPagingEnabled = true
        /*self.view.addSubview(scrollView)
         for index in 0..<4{
         frame.origin.x = self.scrollView.frame.size.width * CGFloat(index)
         frame.size = self.scrollView.frame.size
         */
        let subView = UIView(frame: frame)
        subView.backgroundColor = UIColor.clear
        //subView.addSubview(pageControl)
        // self.scrollView.addSubview(subView)
        
        
        //}
        /*
         // MARK : TO CHANGE WHILE CLICKING ON PAGE CONTROL
         func changePage(sender: AnyObject) -> () {
         let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
         scrollView.setContentOffset(CGPoint(x: x,y :0), animated: true)
         }
         
         func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
         
         let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
         pageControl.currentPage = Int(pageNumber)
         }
         
         
         
         self.scrollView.contentSize = CGSize(width:self.scrollView.frame.size.width * 4, height: self.scrollView.frame.size.height)
         // pageControl.addTarget(self, action: #selector(pageControl.changePage(sender:)), for: UIControlEvents.valueChanged)
         */
        let initialPage = 0
        let page1 = ViewController1()
        let page2 = ViewController2()
        let page3 = ViewController3()
        let page4 = ViewController4()
        
        // add the individual viewControllers to the pageViewController
        self.pages.append(page1)
        self.pages.append(page2)
        self.pages.append(page3)
        self.pages.append(page4)
        
        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        
        // pageControl
        self.pageControl.frame = CGRect()
        self.pageControl.currentPageIndicatorTintColor = UIColor.black
        self.pageControl.pageIndicatorTintColor = UIColor.lightGray
        self.pageControl.numberOfPages = self.pages.count
        self.pageControl.currentPage = initialPage
        //self.scrollView.addSubview(self.pageControl)
        self.view.addSubview(self.pageControl)
        
        
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
        self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //self.scrollView.addSubview(self.pageControl)
        self.view.addSubview(self.pageControl)
        
        
    }
    
    
    override init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: options)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex == 0 {
                // wrap to last page in array
                return self.pages.last
            } else {
                // go to previous page in array
                return self.pages[viewControllerIndex - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                // go to next page in array
                return self.pages[viewControllerIndex + 1]
            } else {
                // wrap to first page in array
                return self.pages.first
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        // set the pageControl.currentPage to the index of the current viewController in pages
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.index(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }
    
    
}
