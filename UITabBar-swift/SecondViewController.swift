//
//  SecondViewController.swift
//  UITabBar-swift
//
//  Created by kong on 16/2/10.
//  Copyright © 2016年 kong. All rights reserved.
//

import UIKit

typealias TestBlock = (Bool) ->()


public let globleStr = "全局的"

 class SecondViewController: ItemViewController {

    //在此处声明的变量可以被外界调用
    var button = UIButton()
    
    var testBlock:TestBlock!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }

    /**
     初始化UI
     */
    func initUI(){
        self.view.backgroundColor = UIColor.greenColor()
        //button
        let button = UIButton(frame:CGRectMake(50,100,200,50))
        button.backgroundColor = UIColor.orangeColor()
        button .setTitle("开始回调", forState: UIControlState.Normal)
        button .addTarget(self, action:"btnAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)
        
    }
    
    func btnAction( button:UIButton! ){
        
        //回调动作
        if((testBlock) != nil){
          print("开始回调")
          testBlock(true)
            if let navController = self.navigationController {
                navController.popViewControllerAnimated(true)
            }
        }
        
        
    }
    


}
