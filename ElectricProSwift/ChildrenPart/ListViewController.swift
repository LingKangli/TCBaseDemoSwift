//
//  ListViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/26.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class ListViewController: TCBaseViewController,UITableViewDataSource,UITableViewDelegate {

    var items = ["武汉","上海","北京","深圳","广州","天津"]
    var tableView :TCBaseTableView?
    var leftBtn:TCBaseBarButtonItem?
    var rightBtn:TCBaseBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavigation()
        
        self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
        tableView = TCBaseTableView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height));
        self.tableView!.delegate = self;
        self.tableView!.dataSource = self;
        self.tableView!.separatorColor = UIColor.clearColor()
        
        let cellIdentifier = "listCell"
        self.tableView!.registerNib(UINib(nibName: "ListTableViewCell",bundle: nil), forCellReuseIdentifier: cellIdentifier);

        self.view.addSubview(self.tableView!)
        
    }
    
    func setupNavigation() {
        self.setupRightBarButtonItem()
        self.setupLeftBarButtonItem()
        self.setupMiddleView()
    }
    
    //加中间内容
    func setupMiddleView() {
//        self.navigationItem.titleView = UIView.init(frame: CGRectMake(0, 0, 400, 40))
//        self.navigationItem.titleView?.backgroundColor = UIColor.blackColor()
        
        var searchBar : TCBaseSearchBar?
        searchBar = TCBaseSearchBar.init(frame: CGRectMake(0, 0, 400, 40))
        searchBar?.placeholder = "请输入要查找的项目"
        searchBar?.setPositionAdjustment(UIOffset.init(horizontal: 0, vertical: 0), forSearchBarIcon: UISearchBarIcon.Search)
        self.navigationItem.titleView = searchBar
//        self.navigationItem.titleView as! uis
    
    }
    
    //加左边按钮
    func setupLeftBarButtonItem(){

        self.leftBtn = TCBaseBarButtonItem.init(title: "left", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ListViewController.leftButton))
        self.navigationItem.leftBarButtonItem = self.leftBtn
    }
    
    func leftButton() {
        print("点击左边按钮")
    }
    
//    加右边按钮
    func setupRightBarButtonItem(){
    
        self.rightBtn = TCBaseBarButtonItem.init(title:"title", style: UIBarButtonItemStyle.Plain, target: self, action:#selector(ListViewController.rightBarButtonItemClicked))
        self.navigationItem.rightBarButtonItem = self.rightBtn
    }
    
    func rightBarButtonItemClicked(){
    
        print("rightBarButtonItemClicked()")
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didselect")
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 130
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identi = "listCell"
//        let cell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: identi)
        
        let cell:ListTableViewCell = self.tableView!.dequeueReusableCellWithIdentifier(identi, forIndexPath: indexPath) as! ListTableViewCell
        
        
//        cell.textLabel?.text = "this is cell"
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.productName.text = "projectName"
        cell.projectManager.text = "负责人：projectManager"
        cell.projectNum.text = "编号：222"
        cell.projectAddress.text = "地址：address"
        cell.setState("not ok")

        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
