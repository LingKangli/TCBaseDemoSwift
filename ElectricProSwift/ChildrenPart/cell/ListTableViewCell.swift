//
//  ListTableViewCell.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/4/21.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class ListTableViewCell: TCBaseTableViewCell {

    @IBOutlet weak var productName: TCBaseLabel!
    
    @IBOutlet weak var projectManager: TCBaseLabel!
    
    @IBOutlet weak var projectNum: TCBaseLabel!
    
    @IBOutlet weak var projectAddress: TCBaseLabel!
    
    @IBOutlet weak var projectStateImage: TCBaseImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setState(stateStr:NSString)  {
        if stateStr .isEqualToString("ok") {
            
//            projectStateImage.backgroundColor = UIColor.greenColor()
            projectStateImage.image = UIImage.init(named: "message_correct")
            
        }else{
        
            projectStateImage.image = UIImage.init(named: "message_mistake")
        }
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func <#name#>(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
    
    
}
