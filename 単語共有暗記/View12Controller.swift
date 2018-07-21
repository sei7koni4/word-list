//
//  View12Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/11/04.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit

class View12Controller: UIViewController {
    
    @IBOutlet var wordtestlabel:UILabel!
    @IBOutlet var meantestlabel:UILabel!
    
    var view12WordArray = box1.wordArray
    var view12MeanArray = box1.meanArray
    var view12HanbetsuArray = box1.hanbetsuArray
    var loadnumber:Int = 0
//    var gomennnelabel:UILabel!
    
    @IBOutlet var kakusuyatsu:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(loadnumber)
        print(box1.hanbetsuArray[loadnumber])
        if(box1.hanbetsuArray[loadnumber] == false){
            wordtestlabel.text = view12WordArray[loadnumber]
            meantestlabel.text = view12MeanArray[loadnumber]
        }else{
            loadnumber = loadnumber + 1
            self.viewDidLoad()
//            gomennnelabel.text = "覚えてない単語はないよ！"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func seeanswer(){
        wordtestlabel.isHidden = false
        kakusuyatsu.isHidden = true
    }
    
    @IBAction func Iknowit(){
        if(box1.hanbetsuArray.count > loadnumber){
//            box1.hanbetsuArray[loadnumber] = true
//        } else {
//            box1.hanbetsuArray.append(true)
//        }
            
//            if(
//                loadnumber > 0){
            box1.hanbetsuArray[loadnumber] = true}
//            } else {
//                           }
        
            
        if view12WordArray.count - 1 == loadnumber{
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "view10")
            self.present(nextView, animated: true, completion: nil)
        }
        else{
            loadnumber = loadnumber + 1
            wordtestlabel.text = view12WordArray[loadnumber]
            meantestlabel.text = view12MeanArray[loadnumber]
            kakusuyatsu.isHidden = false
        }
    }
    
    @IBAction func Idonotknowit(){
        
        if(loadnumber > 0){
            box1.hanbetsuArray[loadnumber] = false
        } else {
            box1.hanbetsuArray.append(false)
        }
        
        if view12WordArray.count - 1 == loadnumber{
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "view10")
            self.present(nextView, animated: true, completion: nil)
        }
        else{
            loadnumber = loadnumber + 1
            wordtestlabel.text = view12WordArray[loadnumber]
            meantestlabel.text = view12MeanArray[loadnumber]
            kakusuyatsu.isHidden = false
        }
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
