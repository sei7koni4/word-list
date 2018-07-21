//
//  View11Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/11/04.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View11Controller: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var oboetenaitestboxnameView: UITableView!
    
    override func viewDidLoad() {
        
        oboetenaitestboxnameView.delegate = self
        oboetenaitestboxnameView.dataSource = self
        
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = oboetenaitestboxnameView.dequeueReusableCell(withIdentifier:"oboetenaitestnamecell")
   
        cell?.textLabel?.text = box1.boxname
        
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
