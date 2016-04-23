//
//  ProductDetailViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/26.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class ProductDetailViewController: TCBaseViewController,UITableViewDelegate,UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor.greenColor()
        let tableView = TCBaseTableView.init(frame: CGRectMake(0, 0, TCBaseUtill.TCBaseScreen.width, TCBaseUtill.TCBaseScreen.height));
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.registerClass(TCBaseTableViewCell.self, forCellReuseIdentifier: "test")
        self.view.addSubview(tableView)
        
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didselect")
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 40
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identi = "cell"
        let cell = TCBaseTableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: identi)
        cell.textLabel?.text = "this is cell"
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
