
import UIKit

class ViewController: UIViewController
{
    

    var isTypingNumber = false
    var firstNumber: Int? = 0
    var secondNumber: Int? = 0
    var operation = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstNumber = 0
        secondNumber = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelAction(sender: AnyObject)
    {
        resultLabel.text = ""
    }
    
    @IBAction func buttonTapped(sender: AnyObject)
    {
        let number = sender.currentTitle
        
        if isTypingNumber
        {
            resultLabel.text = resultLabel.text! + number!!
        } else
        {
            resultLabel.text = number
            isTypingNumber = true
        }
    }
    
    
    @IBAction func operationTapped(sender: AnyObject)
    {
        isTypingNumber = false
        firstNumber = Int((resultLabel.text)!)
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalAction(sender: AnyObject)
    {
        isTypingNumber = false
        var result = 0
        secondNumber = Int((resultLabel.text)!)
        
        if operation == "+"
        {
            result = firstNumber! + secondNumber!
            
        } else if operation == "-"
        {
            result = firstNumber! - secondNumber!
        }
        
        resultLabel.text = "\(result)"
    }
    
    

}

