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
    }
    


}


