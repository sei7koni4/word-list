//
//  View7Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View7Controller: UIViewController {
    
    @IBOutlet var wordaddfield:UITextField!
    @IBOutlet var meanaddfield:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savebutton(){
        box1.wordArray.append(wordaddfield.text!)
        box1.meanArray.append(meanaddfield.text!)
        wordaddfield.text = ""
        meanaddfield.text = ""
    }
    
    @IBAction func delete(){
        wordaddfield.text = ""
        meanaddfield.text = ""
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
