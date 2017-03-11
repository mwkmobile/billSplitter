import UIKit

class ResultsViewController: UIViewController {
    
    var totalPerDiner: String = ""

    @IBOutlet weak var result: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = "the total cost per diner is $\(totalPerDiner)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
