//
//  ViewController.swift
//  単語共有暗記
//
//  Created by 小西星七 on 2017/07/01.
//  Copyright © 2017年 小西星七. All rights reserved.
//
//test
import UIKit

class View1Controller: UIViewController {
    
    @IBOutlet var boxnamefield:UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
    }
    
    @IBAction func done(sender: UIBarButtonItem){
        box1.boxname = boxnamefield.text
        self.dismiss(animated: true,completion: nil)
    }
    
    @IBAction func gomakingword(){
        box1.boxname = boxnamefield.text
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "view2")
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }


    
    }



