//
//  View10Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View10Controller: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
  //  typealias Datatype = (wordkekkalabel: String,meankekkalabel: String,kekkalabel: String)
    
        @IBOutlet var happyouView:UITableView!
    
    @IBOutlet var wordkekkalabel:UILabel!
    @IBOutlet var meankekkalabel:UILabel!
    @IBOutlet var kekkalabel:UILabel!
    
    var view10WordArray = box1.wordArray
    var view10MeanArray = box1.meanArray
    var view10HanbetsuArray = box1.hanbetsuArray
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        happyouView.delegate = self
        happyouView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return box1.wordArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell2
        
        cell.wordLabel.text = view10WordArray[indexPath.row]
        cell.meanLabel.text = view10MeanArray[indexPath.row]
    
        if(view10HanbetsuArray[indexPath.row] == false){cell.kekkaLabel.text = "×"}
        else{cell.kekkaLabel.text = "○"}
        
        return cell
    }

    
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
