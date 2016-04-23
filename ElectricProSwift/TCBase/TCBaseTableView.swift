//
//  TCBaseTableView.swift
//  ElectricProSwift
//
//  Created by LingKangli on 16/4/22.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

import UIKit

class TCBaseTableView: UITableView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    
    /*
     * 使tableView中的cell两边的线条从最左到最右 begin
     */
    func viewDidLayoutSubviews() {
        self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        self.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        cell.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
    }
    /*
     * 使tableView中的cell两边的线条从最左到最右 end
     */
}
