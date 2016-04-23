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
        let title:String
        let controller :Any
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.frame = CGRectMake(0, tabBarY, LLGScreenW, LLGScreenH)
        self.setTabBarBgColor(UIColor.greenColor())
        
        

        let tabbarItem0 = TCTabBarItem(pic:"tab_home.png",title:"首页",controller:AddressViewController())
        let tabbarItem1 = TCTabBarItem(pic:"tab_person_down",title:"个人中心",controller:MyInfoViewController())
        let tabbarItem2 = TCTabBarItem(pic:"tab_person_down",title:"个人中心",controller:MyInfoViewController())
        var tabbarItems:[TCTabBarItem] = [tabbarItem0,tabbarItem1,tabbarItem2]
//        self.viewControllers = UIViewController[]()
        
//        此处需要调查viewControllers是否为空，如何添加

//        添加
        for index in 0...2 {
            let nav = UINavigationController(rootViewController: tabbarItems[index].controller as! TCBaseViewController)
            self.viewControllers!.append(nav)
            print("controlls \(self.viewControllers)")
        }
        
        let tabBars = self.tabBar.items![0]
        
        print("tabbar \(tabBars.title)")
//        let item0  = tabBar.items![0]
//        let item1 = tabBar.items![1]
//        let item2 = tabBar.items![2]

        /*
        
        let tabBarItems = self.tabBar

        
//        var arr:[Any] = [Any]()
//        arr.append(tabbarItem0)
//        arr.append(tabbarItem1)
//        arr.append(tabbarItem2)
        
        print("this is test:\(tabBarItems)")
        
//        let item0  = tabBarItems.items![0]
//        let item1 = tabBarItems.items![1]
//        let item2 = tabBarItems.items![2]
        
        for index in 0...2{
            tabBarItems.items![index].title = tabbar[index].title
            tabBarItems.items![index].image = UIImage(imageLiteral:tabbar[index].pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            tabBarItems.items![index].selectedImage = UIImage(imageLiteral: tabbar[index].pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        }
        */
        /**
        
        item0.title = tabbarItem0.1
        item0.image = UIImage(imageLiteral:tabbarItem0.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item0.selectedImage = UIImage(imageLiteral: tabbarItem0.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        item1.title = tabbarItem1.1
        item1.image = UIImage(imageLiteral:tabbarItem1.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item1.selectedImage = UIImage(imageLiteral:tabbarItem1.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        item2.title = tabbarItem2.1
        item2.image = UIImage(imageLiteral: tabbarItem2.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.selectedImage = UIImage(imageLiteral:tabbarItem2.0).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        item0.titlePositionAdjustment = UIOffsetMake(2, 5)
        item1.titlePositionAdjustment = UIOffsetMake(2, 5)
        item2.titlePositionAdjustment = UIOffsetMake(2, 5)
    **/
        // Do any additional setup after loading the view.
        
    }

    func setTabbarItem(content:AnyObject ,item:UITabBarItem) {
//        item.title = content.title
//        item.image = UIImage(imageLiteral:content.pic).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
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
