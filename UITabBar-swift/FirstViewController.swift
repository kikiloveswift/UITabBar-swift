//
//  FirstViewController.swift
//  UITabBar-swift
//
//  Created by kong on 16/2/10.
//  Copyright © 2016年 kong. All rights reserved.
//

import UIKit




class FirstViewController: ItemViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self .initUI()
    }

    /**
     初始化UI
     */
    func initUI(){
        self.view.backgroundColor = UIColor.redColor()
        
        //button
        let button = UIButton(frame:CGRectMake(50,100,200,50))
        button.backgroundColor = UIColor.orangeColor()
        button .setTitle("开始点击", forState: UIControlState.Normal)
        button .addTarget(self, action:"btnAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)
        
        /*
        或者这样创建button 也是OK的
        let button1 = UIButton(type: UIButtonType.Custom)
        */
        
        
    }
    
    func btnAction(button:UIButton!){
        
        button.selected = !button.selected
        
        if (button.selected){
            button.setTitle("点击结束", forState: UIControlState.Normal)
        }else{
            button.setTitle("开始点击", forState: UIControlState.Normal)
        }
        
        let secondVC = SecondViewController()
        secondVC.button.hidden = true;
        
        //TODO: Block的回调  先初始化一次 然后再另一个类中回调
        secondVC.testBlock = {
            (islogin:Bool)->() in
            print("来回调我啊，嘿嘿")
            if (islogin == true)
            {
                print("靠！竟然回调成功了")
                button.setTitle("回调成功", forState: UIControlState.Normal)
            }
        }
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
}


