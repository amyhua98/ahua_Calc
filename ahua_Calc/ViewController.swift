//
//  ViewController.swift
//  ahua_Calc
//
//  Created by Amy Hua on 2/1/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var initalNum: Int = 0
    var prevNum: Int = 0
    var currNum = false
    var equals = 0

    @IBOutlet weak var display: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if currNum == true{
            display.text = String(sender.tag-1)
            initalNum = Int(display.text!)!
            currNum = false
        }
        else{
            display.text = display.text! + String(sender.tag-1)
            initalNum = Int(display.text!)!
        }
    }
    
    
    @IBAction func signs(_ sender: UIButton) {
        if display.text != "" && sender.tag != 11 && sender.tag != 14{
            
            prevNum = Int(display.text!)!
            if sender.tag == 12{
                display.text = "+"
            }
            else if sender.tag == 13{
                display.text = "-"
            }
            equals = sender.tag
            currNum = true
        }
        else if sender.tag == 11{
            if equals == 12{
                display.text = String(prevNum + initalNum)
            }
            else if equals == 13{
                display.text = String(prevNum - initalNum)
            }
        }
        else if sender.tag == 14{
            display.text = ""
            prevNum = 0
            currNum = true
            equals = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


