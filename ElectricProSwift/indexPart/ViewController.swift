//
//  ViewController.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/3/28.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class ViewController: TCBaseViewController,UITextFieldDelegate {

    @IBOutlet weak var perImg: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func loginBtn(sender: AnyObject) {
        
        print("loginBtn")
        if(self.isFormat()){
           self.loginOk()
        }else{
        self.loginFail("fail")
        }
    }
    
    func isFormat() -> Bool {
//        if (nameText.text?.utf8 || pwdText.text == nil){
        
        /**
        *

        if nameText.text!.isEmpty  || pwdText.text!.isEmpty{
            return false
        }
        else{
            return true
        }*/
        
        return true
    }
    
    func loginOk(){
    

        let tabBar = TabbarViewController()
        tabBar.tabBarController?.view.backgroundColor = UIColor.greenColor()
        self.presentViewController(tabBar, animated: true, completion: nil)
        
    }
    
    func loginFail(message:NSString) {
    
//        @warn_unqualified_access
        self.addAlertViewWithMessage("登录失败")
    }
    
    func addAlertViewWithMessage(message:String){
    
        let alert = UIAlertController(title: "提示", message: message, preferredStyle:UIAlertControllerStyle.Alert)

        self.presentViewController(alert, animated: true, completion: nil)
        self .performSelector(Selector("alert"), withObject: nil, afterDelay: 2.0)

//        alert1 = UIAlertController(title: "simple alert", message: "this is a simple alert", preferredStyle: UIAlertControllerStyle.Alert)

    }
//   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibName, bundle: nibBundleOrNil)
//        return self
//    }
//    @property (weak, nonatomic) IBOutlet UIImageView *perImg;
//    @property (weak, nonatomic) IBOutlet UITextField *nameText;
//    @property (weak, nonatomic) IBOutlet UITextField *pwdText;
//    @property (weak, nonatomic) IBOutlet UIButton *loginBtn;
//    
//    - (IBAction)loginBtn:(id)sender;
    
    func alert(){
    
        print("alert is now")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.layer.contents = UIImage(named: "login_bg_img")?.CGImage
        
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.hidden = false
        
        //图片的设置
        perImg.frame = CGRectMake(0, 0, 150, 150)
        perImg.center = CGPointMake(LLGScreenW/2, LLGScreenH*0.2+perImg.frame.size.height/2)
        perImg.backgroundColor = UIColor.blackColor()
        perImg.image = UIImage(named: "app_log")
//        perImg.image = UIImage(imageLiteral: "app_log")
//        perImg.image = UIImage(contentsOfFile:"app_log")
        
        //帐号文本
        nameText.center = CGPointMake(LLGScreenW/2, CGRectGetMaxY(perImg.frame)+LLGScreenH*0.1)
//        nameText.delegate = self
//        var delegate : UITextFieldDelegate
        
        //密码文本
        pwdText.center = CGPointMake(LLGScreenW/2, CGRectGetMaxY(nameText.frame)+nameText.frame.size.height)
        
//        pwdText.delegate = self
        
        //登录按钮
        loginBtn.center = CGPointMake(LLGScreenW/2, CGRectGetMaxY(pwdText.frame)+LLGScreenH*0.1)
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor;
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.cornerRadius = 5
        loginBtn.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 0.5)
        
//        var nextBtn = UIButton()
//        let nextBtn :UIButton = UIButton(type:.Custom)
//        nextBtn.frame = CGRectMake(10,64, 200, 30);
//        nextBtn.backgroundColor = UIColor.greenColor()
//        nextBtn.setTitleColor(UIColor.yellowColor(), forState:.Normal)
//        nextBtn.setTitle("下一页", forState:.Normal)
//        nextBtn.addTarget(self, action:Selector("tapped"), forControlEvents: .TouchUpInside)
//        self.view.addSubview(nextBtn)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        UIView.beginAnimations("Animation", context: nil)
        UIView.setAnimationDuration(0.20)
        UIView.setAnimationBeginsFromCurrentState(true)
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - 100, self.view.frame.size.width, self.view.frame.size.height)
        UIView .commitAnimations()
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        UIView.beginAnimations("Animation", context: nil)
        UIView.setAnimationDuration(0.2)
        UIView.setAnimationBeginsFromCurrentState(true)
        self.view.frame =  CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+100, self.view.frame.size.width, self.view.frame.size.height)
        UIView.commitAnimations()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    /*
    func tapped(){
        
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        //        self.presentViewController(secondView, animated: Bool, completion: (() -> Void)?)
        
        let tabBar = TabbarViewController()
        self.presentViewController(tabBar, animated: false, completion: nil)
        //        self.navigationController?.pushViewController(tabBar, animated: false)
        
        print("点我了")
    }*/
    
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
