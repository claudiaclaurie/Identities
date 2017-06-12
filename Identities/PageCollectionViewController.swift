//
//  PageCollectionViewController.swift
//  Identities
//
//  Created by laurie on 6/11/17.
//  Copyright © 2017 claudialaurie. All rights reserved.
//

import UIKit


class PageCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collectionview: UICollectionView!
    var cell: UICollectionViewCell!
    var cellId = "Cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create an instance of UICollectionViewFlowLayout since you cant
        // Initialize UICollectionView without a layout
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: view.frame.width, height: 700)
        
        collectionview = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionview.dataSource = self
        collectionview.delegate = self
        collectionview.register(SwipePageCell.self, forCellWithReuseIdentifier: cellId)
        collectionview.showsVerticalScrollIndicator = false
        collectionview.backgroundColor = UIColor.white
        self.view.addSubview(collectionview)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return cell
    }
    func enterButtonPressed() {
        let newViewController = PageCollectionViewController(nibName: "PageCollectionViewController", bundle:nil)
        self.navigationController?.pushViewController(newViewController, animated: true)
    }

    class SwipePageCell: UICollectionViewCell {
        
        
        let profileImageButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = UIColor.white
            button.layer.cornerRadius = 18
            button.clipsToBounds = true
            button.setImage(UIImage(named: "Profile"), for: .normal)
            
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
