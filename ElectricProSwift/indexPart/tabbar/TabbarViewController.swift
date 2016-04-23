//
//  TabbarViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/25.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class TabbarViewController: TCBaseTabBarController{

    
    struct TCTabBarItem {
        let pic :String
        let picSelected :String
        let title:String
        let controller :AnyObject
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.frame = CGRectMake(0, tabBarY, LLGScreenW, LLGScreenH)
        self.setTabBarBgColor(UIColor.greenColor())

        let tabbarItem0 = TCTabBarItem(pic:"tab_home.png",picSelected: "tab_home_down", title:"首页",controller:AddressViewController())
        let tabbarItem1 = TCTabBarItem(pic:"tab_list",picSelected: "tab_list_down",title:"项目列表",controller: ListViewController())
        let tabbarItem2 = TCTabBarItem(pic:"tab_person",picSelected: "tab_person_down",title:"个人中心",controller:MyInfoViewController())
        
        let nav1 = UINavigationController(rootViewController: tabbarItem0.controller as! AddressViewController)
        let nav2 = UINavigationController(rootViewController: tabbarItem1.controller as! ListViewController)
        let nav3 = UINavigationController(rootViewController: tabbarItem2.controller as! MyInfoViewController)
  
        self.viewControllers = [nav1,nav2,nav3]
        let tabBar = self.tabBar
        let item0  = tabBar.items![0]
        let item1 = tabBar.items![1]
        let item2 = tabBar.items![2]
        
        item0.image = UIImage(imageLiteral:tabbarItem0.pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item0.title = tabbarItem0.title
        item0.selectedImage = UIImage(imageLiteral: tabbarItem0.picSelected).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        
        item1.image = UIImage(imageLiteral: tabbarItem1.pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item1.title = tabbarItem1.title
        item1.selectedImage = UIImage(imageLiteral:tabbarItem1.picSelected).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        
        item2.image = UIImage(imageLiteral: tabbarItem2.pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.selectedImage = UIImage(imageLiteral: tabbarItem2.picSelected).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.title = tabbarItem2.title
        
        //        let item1 = tabBar.items[1]
        
        let mView = UIView.init(frame: CGRectMake(0, 0, LLGScreenW, LLGScreenH))
        mView.backgroundColor = UIColor.greenColor()
        self.tabBar.insertSubview(mView, atIndex: 0)
        
        item0.titlePositionAdjustment = UIOffsetMake(2, 5)
        item1.titlePositionAdjustment = UIOffsetMake(2, 5)
        item2.titlePositionAdjustment = UIOffsetMake(2, 5)
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    override func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool) {
//        
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
