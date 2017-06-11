//
//  AppDelegate.swift
//  Identities
//
//  Created by laurie on 6/10/17.
//  Copyright © 2017 claudialaurie. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window =  UIWindow(frame: UIScreen.main.bounds)
        //setting the initial screen bounds of the view
        let initialViewController = HomeViewController()
        //creating object of ViewController class
        let navigationController = UINavigationController(rootViewController: initialViewController)
        //creating an instance of UINavigationController & setting the rootViewController
        self.window?.rootViewController = navigationController
        //setting the initial viewController as UINavigationController
        self.window?.makeKeyAndVisible()
        
        //        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        navigationController.navigationBar.backgroundColor = UIColor.white
        //navigationController.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "gradient.png")!)
        //        navigationController.navigationBar.backIndicatorImage = UIImage(named: "gradient.png")
        
        
        //        let navItem = UINavigationItem()
        //        navItem.title = "Title"
        
        //create a left button for navigation item
        //        let leftButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("Btn_Clicked:"))
        
        //create button for navigation item
        //        navItem.leftBarButtonItem =  leftButton
        
        //assign the navigation item to the navigation bar
        //        navBar.items = [navItem]
        
        //make the navigation bar a subview of the current viewcontroller
        //        self.inputView?.addSubview(navBar)
        func Btn_Clicked(sender: UIBarButtonItem) {
            //do something
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

