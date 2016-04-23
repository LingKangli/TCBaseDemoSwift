//
//  MyInfoViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/26.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit


class MyInfoViewController: TCBaseViewController,UITableViewDelegate,UITableViewDataSource{

    var tableView :TCBaseTableView?
    var cellHeigh = 0.0
    var cellOtherHeigh = 0.0
    var array:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.hideNavBar()
        self.setData()
        self.setView()
    }
    
    func setData() {
        array = ["个人资料","退出登录"]
        cellHeigh = 150.0
        cellOtherHeigh = 60
    }
    
    func setView() {
        tableView =  TCBaseTableView.init(frame: CGRectMake(0, 0, LLGScreenW, LLGScreenH));
        self.tableView!.delegate = self;
        self.tableView!.dataSource = self;
        self.view.addSubview(self.tableView!)
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        if indexPath.row == 0 {
            let view = UIView.init(frame: CGRectMake(0, 0, LLGScreenW, CGFloat(cellHeigh)))
            view.backgroundColor = UIColor.grayColor()
            cell.addSubview(view)
            
            let personImg = UIImageView.init(image: UIImage.init(named: "ic_login_user"))
            personImg.frame = CGRectMake(0, 0, 80, 80)
            personImg.center = CGPointMake(LLGScreenW/2,CGFloat(cellHeigh)/2)
            view.addSubview(personImg)
            
        }else{
            
//            titleArray?.objectAtIndex(indexPath.row) as! NSString
            
//            cell.textLabel?.text = (String*)titleArray[indexPath.row];
//            cell.textLabel!.text = titleArray[indexPath.row]
            cell.textLabel?.text = array[indexPath.row-1]
//                titleArray!.objectAtIndex(indexPath.row) as? String
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array!.count+1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            return CGFloat(cellHeigh)
        }
        else{
             return CGFloat(cellOtherHeigh)
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headeView = UIView.init(frame: CGRectMake(0, 0, LLGScreenW, CGFloat( cellHeigh)))
        
        return headeView
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let myInfoDetailVC = MyInfoDetailViewController()
        self.navigationController?.pushViewController(myInfoDetailVC, animated: false)
        
    }
    /*
     * 使tableView中的cell两边的线条从最左到最右 begin
     */
//    override func viewDidLayoutSubviews() {
//        self.tableView?.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
//        self.tableView?.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
//    }
//    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
//        cell.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
//    }
    /*
     * 使tableView中的cell两边的线条从最左到最右 end
     */

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
