//
//  View6Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View6Controller: UIViewController {
    
    var number:Int!
    
    @IBOutlet var wordlabel: UILabel!
    @IBOutlet var meanlabel: UILabel!
    @IBOutlet var wordeditfield: UITextField!
    @IBOutlet var meaneditfield: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print(box1.wordArray[number])
        wordlabel.text = box1.wordArray[number]
        meanlabel.text = box1.meanArray[number]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
    }
    
    @IBAction func wordkoushin(sender: UIBarButtonItem){
        box1.wordArray[number] = wordeditfield.text!
        wordeditfield.text = " "
        wordlabel.text = box1.wordArray[number]
    }
    
  
    
    @IBAction func meankoushin(sender: UIBarButtonItem){
        box1.meanArray[number] = meaneditfield.text!
        meaneditfield.text = " "
        meanlabel.text = box1.meanArray[number]
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
