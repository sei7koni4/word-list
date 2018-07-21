//
//  View8Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View8Controller: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var testboxnameView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        testboxnameView.delegate = self
        testboxnameView.dataSource = self

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
        let cell = testboxnameView.dequeueReusableCell(withIdentifier: "testboxnamecell")

        cell?.textLabel?.text = box1.boxname
       // cell?.textLabel?.text = "tedt"
       // print("test")
        return cell!
        
    }
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = testboxnameView.dequeueReusableCell(withIdentifier: "testboxnamecell")
//      
////        cell?.textLabel?.text = box1.boxname
//        cell?.textLabel?.text = "tedt"
//        print("test")
//        return cell!
//        
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }

}
