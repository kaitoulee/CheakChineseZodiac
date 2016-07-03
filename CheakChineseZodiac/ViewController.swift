//
//  ViewController.swift
//  CheakChineseZodiac
//
//  Created by kaitouLee on 16/6/29.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //点击文本框外以后焦点消失,也就是退出键盘框
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    @IBAction func okTapped(sender: AnyObject) {
      
        yearOfBirth.resignFirstResponder()//退出数字键盘
        
        if let year = Int(yearOfBirth.text!){
            let imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        
        }
         // var year = Int(yearOfBirth.text!)获取文本框内容
    }

}

