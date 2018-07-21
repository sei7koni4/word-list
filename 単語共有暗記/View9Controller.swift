//
//  View9Controller.swift
//  単語共有暗記
//
//  Created by 小西佳子 on 2017/07/22.
//  Copyright © 2017年 小西星七. All rights reserved.
//

import UIKit


class View9Controller: UIViewController {
    
    
    @IBOutlet var wordtestlabel:UILabel!
    @IBOutlet var meantestlabel:UILabel!
    
    var view9WordArray = box1.wordArray
    var view9MeanArray = box1.meanArray
    var view9HanbetsuArray = box1.hanbetsuArray
    var loadnumber:Int = 0
    
    @IBOutlet var kakusuyatsu:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wordtestlabel.text = view9WordArray[loadnumber]
        meantestlabel.text = view9MeanArray[loadnumber]
        //box1.hanbetsuArray.append(true)
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
            box1.hanbetsuArray[loadnumber] = true
        } else {
            box1.hanbetsuArray.append(true)
        }
                if(loadnumber > 0){
                    box1.hanbetsuArray[loadnumber] = true
                } else {
                    box1.hanbetsuArray.append(true)
                }

        print(loadnumber)

        if view9WordArray.count - 1 == loadnumber{
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "view10")
            self.present(nextView, animated: true, completion: nil)
        }
        else{
            loadnumber = loadnumber + 1
            wordtestlabel.text = view9WordArray[loadnumber]
            meantestlabel.text = view9MeanArray[loadnumber]
            kakusuyatsu.isHidden = false
        }
    }
    
    @IBAction func Idonotknowit(){
        if(box1.hanbetsuArray.count > loadnumber){
            box1.hanbetsuArray[loadnumber] = false
        } else {
            box1.hanbetsuArray.append(false)
        }
        
        if(loadnumber > 0){
            print(box1.hanbetsuArray)
            print(loadnumber)
            box1.hanbetsuArray[loadnumber] = false
        } else {
            box1.hanbetsuArray.append(false)
        }
        print(loadnumber)
        
        if view9WordArray.count - 1 == loadnumber{
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "view10")
            self.present(nextView, animated: true, completion: nil)
        }
        else{
            loadnumber = loadnumber + 1
            wordtestlabel.text = view9WordArray[loadnumber]
            meantestlabel.text = view9MeanArray[loadnumber]
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
