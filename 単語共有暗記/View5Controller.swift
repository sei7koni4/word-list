//
//  View5Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View5Controller: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var wordedittableView: UITableView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        let tableView = UITableView()
        
        wordedittableView.delegate = self
        
        wordedittableView.dataSource = self
        

        // Do any additional setup after loading the view.
        //print(box1.boxname)
               
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return box1.wordArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = wordedittableView.dequeueReusableCell(withIdentifier: "wordedit2")
        
        //print(box1.wordArray[0])
        cell?.textLabel?.text = box1.wordArray[indexPath.row]

        //        cell?.textLabel?.text = "testName"
        
        return cell!
        
    }
    
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        self.performSegue(withIdentifier: "wordedit",sender: nil)
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next:View6Controller = segue.destination as! View6Controller
        let indexPath : NSIndexPath = self.wordedittableView.indexPathForSelectedRow! as NSIndexPath
        next.number = indexPath.row //box1.wordArray[indexPath.row]
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }
  

  //  var ViewController6 = segue.destinationViewController as! ViewController6
  //  ViewController6.text1 =
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
