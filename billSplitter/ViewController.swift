import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dinersTextField: UITextField!
    
    @IBOutlet weak var totalCostTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func calculate() -> String {
        let dinerValue = dinersTextField.text
        let totalValue = totalCostTextField.text
        
        if let dinerStr = dinerValue, let totalStr = totalValue
        {
            let dinerDouble = Double(dinerStr)
            let totalDouble = Double(totalStr)
            
            if let diner = dinerDouble, let total = totalDouble
            {
                return String(format: "%.2f", total/diner)
            }
            
        }
        return ""
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
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultsViewController
        viewController.totalPerDiner = calculate()
    }


}

