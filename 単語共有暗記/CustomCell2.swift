//
//  custumclass.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2018/02/10.
//  Copyright © 2018年 小西星七. All rights reserved.
//

import UIKit

class CustomCell2: UITableViewCell {
    
    // 以下の２つがStoryboardのlabelと紐付いています
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var meanLabel: UILabel!
    @IBOutlet weak var kekkaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    
    override func setSelected(
        _ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        wordkekkalabel.text = box1.wordArray[indexPath.row]
//        meankekkalabel.text = box1.meanArray[indexPath.row]
//        if box1.hanbetsuArray[indexPath.row] == false {
//            kekkalabel.text = "○"
//        }else{
//            kekkalabel.text = "×"
//        }
    }
}
