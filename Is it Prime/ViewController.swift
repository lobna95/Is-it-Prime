//
//  ViewController.swift
//  Is it Prime
//
//  Created by Lobna on 9/21/18.
//  Copyright © 2018 Lobna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clickButtom(_ sender: Any) {
        if let Enterednumber = numberText.text{
            if let number = Int(Enterednumber){
                var prime = true
                if (number == 1){
                    prime = false
                }
                var i = 2
                while i < number{
                    if number % i == 0{
                        prime = false
                        break
                    }
                    i += 1
                }
                if prime{
                    resultLabel.text = "The number is prime"
                }else{
                    resultLabel.text = "The number isn't prime"
                }
            }else{
                resultLabel.text = "Enter a whole number"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

