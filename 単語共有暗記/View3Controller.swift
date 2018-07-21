//
//  View3Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/18.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View3Controller: UIViewController, UITableViewDataSource {
    
    //テーブルビューを宣言
    @IBOutlet var table:UITableView!

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメソッドをView3Controllerクラスに書く
        table.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "boxedit")
        
        cell?.textLabel?.text = box1.boxname
//        cell?.textLabel?.text = "testName"
        
        return cell!
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
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
