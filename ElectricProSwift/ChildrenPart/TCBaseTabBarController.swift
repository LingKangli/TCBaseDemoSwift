//
//  TCBaseTabBarController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/4/22.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class TCBaseTabBarObj: NSObject {
//    struct TCBar {
//        let name :String
//        let image:String
//        
//    }
    
    
}

class TCBaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor()], forState:.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.grayColor()], forState:.Selected)
        
//        self.tabBar.items[0].title
        
        // Do any additional setup after loading the view.
        
        /*
        self.tabBar.frame = CGRectMake(0, tabBarY, LLGScreenW, LLGScreenH)
        self.setTabBarBgColor(UIColor.greenColor())
        //        self.tabBar.backgroundColor = UIColor.grayColor()
        
        let addressVC = AddressViewController();
        let listVC = ListViewController()
        let myInfoVC = MyInfoViewController()
        
        let nav1 = UINavigationController(rootViewController: addressVC)
        let nav2 = UINavigationController(rootViewController: listVC)
        let nav3 = UINavigationController(rootViewController: myInfoVC)
        
        self.viewControllers = [nav1,nav2,nav3]
        
        let tabBar = self.tabBar
        let item0  = tabBar.items![0]
        let item1 = tabBar.items![1]
        let item2 = tabBar.items![2]
        
        item0.image = UIImage(imageLiteral:"tab_home.png").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item0.title = "首页"
        item0.selectedImage = UIImage(imageLiteral: "tab_home_down").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        
        item1.image = UIImage(imageLiteral: "tab_list").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item1.title = "项目"
        item1.selectedImage = UIImage(imageLiteral:"tab_list_down").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        
        item2.image = UIImage(imageLiteral: "tab_person").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.selectedImage = UIImage(imageLiteral: "tab_person_down").imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        item2.title = "个人中心"
        
        //        let item1 = tabBar.items[1]
        
        let mView = UIView.init(frame: CGRectMake(0, 0, LLGScreenW, LLGScreenH))
        mView.backgroundColor = UIColor.greenColor()
        self.tabBar.insertSubview(mView, atIndex: 0)
        
        item0.titlePositionAdjustment = UIOffsetMake(2, 5)
        item1.titlePositionAdjustment = UIOffsetMake(2, 5)
        item2.titlePositionAdjustment = UIOffsetMake(2, 5)
 */
    }

    func setTabBarBgColor(bgColor:UIColor){
    
        let navBg = UIView.init(frame: CGRectMake(0, 0, TCBaseUtill.TCBaseScreen.width, TCBaseUtill.TCBaseScreen.height))
        navBg.backgroundColor = bgColor
        self.tabBar.insertSubview(navBg, atIndex: 0)

    }
    
    func setTabBarBgImage(bgImage:UIImage) {
//        let navBg = UIImage()
//        navBg.backgroundColor = bgColor
//        self.navigationController?.view.insertSubview(navBg, atIndex: 0)
    }
    
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
