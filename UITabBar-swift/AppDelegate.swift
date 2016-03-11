//
//  AppDelegate.swift
//  UITabBar-swift
//
//  Created by kong on 16/2/9.
//  Copyright © 2016年 kong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        //声明一个空视图
        self.window?.frame           = UIScreen.mainScreen().bounds
        self.window?.backgroundColor = UIColor .orangeColor()
        self.window?.makeKeyAndVisible()

        let tabBarController = UITabBarController()
        let firstVC          = FirstViewController()
        let secondVC         = SecondViewController()
        let thirdVC          = ThirdViewController()
        let arr              = [firstVC,secondVC,thirdVC]
        var mArr             = [UINavigationController]()
    
        let titleArr = ["首页","发现","聊天"]
//        let imgArr   = [""]
        //每一个标签控制器下面一个导航控制器 导航控制器下面一个 VC
        for var a = 0; a < 3; a++
        {
            let nav        = UINavigationController(rootViewController: arr[a])
            let barItem    = UITabBarItem(title: titleArr[a], image:nil, tag: 11 + a)
            nav.tabBarItem = barItem
            mArr.insert(nav, atIndex: a)
        }
        
        tabBarController .setViewControllers(mArr ,animated: true)
        
        self.window?.rootViewController = tabBarController
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

