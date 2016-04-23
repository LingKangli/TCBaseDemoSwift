//
//  BaseViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/25.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class TCBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func hideTabBar(){
    
        if self.tabBarController?.tabBar.hidden == true{
            return
        }
        
//        UIView* contentView
//        if self.tabBarController?.view.subviews[0].isKindOfClass(UITabBar.){
        
            
//        }
        
    }
    
    func hideNavBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func showNavBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
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
