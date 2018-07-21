//
//  View4Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/18.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View4Controller: UIViewController {
    
    @IBOutlet var boxnamedfield:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(sender: UIBarButtonItem){
        box1.boxname = boxnamedfield.text
        boxnamedfield.text = " "
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
