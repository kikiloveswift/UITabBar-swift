//
//  ThirdViewController.swift
//  UITabBar-swift
//
//  Created by kong on 16/2/10.
//  Copyright © 2016年 kong. All rights reserved.
//

import UIKit
//import Alamofire

class ThirdViewController: ItemViewController,UITableViewDelegate,UITableViewDataSource {
    let dataArr:(NSArray) = UIFont.familyNames()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()

    }
    
    /**
     初始化UI
     
     - returns:
     */
    func initUI(){
        self.view.backgroundColor = UIColor.blueColor()
       let tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view .addSubview(tableView)
        
    }
   
    func requestData(){
    
    }
    
    //!!!: TableViewDelegate
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count;
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let  b = Float(Int(arc4random() % 100)) * 0.01
        print(b)
        cell.backgroundColor = UIColor.init(colorLiteralRed: Float(Int(arc4random() % 100)) * 0.01, green: Float(Int(arc4random() % 100)) * 0.01, blue: Float(Int(arc4random() % 100)) * 0.01, alpha: 1)
        cell.textLabel?.text = dataArr[indexPath.row] as? String
        return cell;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.section,"----",indexPath.row)
        
    }
    
    
    
    
    
    
}
