//
//  ViewController.swift
//  billSplitter
//
//  Created by Michael Koenig on 3/4/17.
//  Copyright © 2017 MWK Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dinersTextField: UITextField!
    
    @IBOutlet weak var totalCostTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        let dinerValue = dinersTextField.text
        let totalValue = totalCostTextField.text
        
        print(dinerValue)
        print(totalValue)
        
        if let dinerStr = dinerValue, let totalStr = totalValue
        {
            print (dinerStr + totalStr)
            
            let dinerDouble = Double(dinerStr)
            let totalDouble = Double(totalStr)
            
            if let diner = dinerDouble, let total = totalDouble
            {
                let formattedTotal = String(format: "%.2f", total/diner)
                let formattedCost = String(format: "%.2f", total)
                
                
               resultLabel.text = "The total cost of food is $\(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $\(formattedTotal)"
            }
            
        }
    }
    // dismiss the keyboard
    @IBAction func dismissKeyboard(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

