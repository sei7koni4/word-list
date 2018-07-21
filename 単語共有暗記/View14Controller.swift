//
//  View14Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/11/04.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View14Controller: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var kyouyuukakuninView: UITableView!
    
    override func viewDidLoad() {
        
        kyouyuukakuninView.delegate = self
        kyouyuukakuninView.dataSource = self
        
        
        super.viewDidLoad()
        
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
        let cell = kyouyuukakuninView.dequeueReusableCell(withIdentifier:"kyouyuukakunincell")
        
        cell?.textLabel?.text = box1.wordArray[indexPath.row]
        
        return cell!
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
