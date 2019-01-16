//
//  ViewController.swift
//  app2
//
//  Created by Mac on 15/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtA: UITextField!
    
    @IBOutlet weak var txtB: UITextField!
    
    
    @IBOutlet weak var lblAns: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func ChangeToPerformAction(_ sender: UISegmentedControl) {
  
    
        if txtA.text != "" && txtB.text != ""{
            
        
            let selectedIndex = sender.selectedSegmentIndex
            
            let a = Int32(txtA.text!)!
            
            let b = Int32(txtB.text!)!
            
            var c:Int32 = 0
            
            var ans:String = ""
            
            switch selectedIndex {
                case 0:
                    c = a + b
                    lblAns.text = "\(c)"
                    ans = "Addition of \(a) and \(b) is \(c)"
                    break;
                case 1:
                    
                    c = a - b
                    ans = "Subtraction of \(a) and \(b) is \(c)"
                    
                    lblAns.text = "\(c)"
                    break;
                case 2:
                    c = a / b
                    
                    ans = "Division of \(a) and \(b) is \(c)"
                    lblAns.text = "\(c)"
                    break;
                case 3:
                    
                    c = a * b
                    ans = "Multiplication of \(a) and \(b) is \(c)"
                    lblAns.text = "\(c)"
                    break;
                default:
                    lblAns.text = "N/A"
                
            }
            
            
            let alert = UIAlertController(title: "Result", message: ans, preferredStyle: .alert)
            
            
            let alertOkAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alert.addAction(alertOkAction)
            
            self.present(alert, animated: true, completion: nil)
            
            
            
        }
        else{
            
            let alertActionSheet = UIAlertController(title: "Error", message: "Please Enter Numbers!", preferredStyle: .actionSheet)
            
            let alertCancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                print("Cancel Action Performed!")
            })
            
            alertActionSheet.addAction(alertCancelAction)
            
            self.present(alertActionSheet, animated: true, completion: nil)
            
            

            
            
            
        }
    
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

