import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var favoriteLanguage: UILabel!
    @IBOutlet weak var selectedAction:UITextView!
    
    var nameStr: String?
    var emailStr: String?
    var nameTextField: UITextField?
    var emailTextField: UITextField?
    
    
    
    
    @IBAction func showAltertWithFields(_ sender: Any) {
        NSLog("in show alert with fields")
        let alert = UIAlertController(title: "Enter Name and Email",
                                      message: "Using textFilds for input",
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder = "Enter Name"
            textField.keyboardType=UIKeyboardType.alphabet
        })
        alert.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder = "Enter Email Address"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        let defaultAction = UIAlertAction(title: "Ok",
                                          style: UIAlertAction.Style.default,
                                          handler: {( alertAction: UIAlertAction) in
                                            let userName = alert.textFields![0].text
                                            let userEmail = alert.textFields![1].text
                                            
                                            self.userName.text = userName
                                            self.userEmail.text = userEmail
                                            
        })
        alert.addAction(defaultAction)
        present(alert, animated: true, completion:nil)
        
    }
    
    @IBAction func showAlertWithOptions(_ sender: Any) {
        NSLog("in show alert with options")

        let alertController = UIAlertController(title: "Select Your Favorite Language",
                                                message: "Pick One!",
                                                preferredStyle: UIAlertController.Style.alert)
        
        let cSharp = UIAlertAction(title: "C#",
                                   style: UIAlertAction.Style.default,
                                   handler: {(alertAction: UIAlertAction) in
                                    //let favoriteLanguage = "C#"
                                    self.favoriteLanguage.text!="C#"
        })
        let Java = UIAlertAction(title: "Java",
                                 style: UIAlertAction.Style.default,
                                 handler: {(alertAction: UIAlertAction) in
                                    //let favoriteLanguage = "Java"
                                    self.favoriteLanguage.text!="Java"
        })
        
        let Swift = UIAlertAction(title: "Swift",
                                  style: UIAlertAction.Style.default,
                                  handler: {(alertAction: UIAlertAction) in
                                    _ = "Swift"
                                    self.favoriteLanguage.text!="Swift"
        })
        
        alertController.addAction(cSharp)
        alertController.addAction(Java)
        alertController.addAction(Swift)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: Any) {
         NSLog("in show action sheet")

        let alertController = UIAlertController(title: "Available Actions",
                                                message: "Choose something from this list",
                                                preferredStyle: UIAlertController.Style.actionSheet)
        
        let sendInfo = UIAlertAction(title: "Send Follow-Up Info",
                                     style: UIAlertAction.Style.default,
                                     handler: {(alertAction: UIAlertAction) in
                                        self.selectedAction.text = "Thank you we will Send information about \(String(describing: self.favoriteLanguage.text!))"
        })
        
        let noInfo = UIAlertAction(title: "Do not Send information",
                                   style: UIAlertAction.Style.default,
                                   handler: {(alertAction: UIAlertAction) in
                                    self.selectedAction.text = "We wil not send any information about \(String(describing: self.favoriteLanguage.text!))"
        })
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: UIAlertAction.Style.cancel,
                                         handler: {(alertAction: UIAlertAction) in
                                            self.selectedAction.text="Pressed Cancel"
        })
        
        alertController.addAction(sendInfo)
        alertController.addAction(noInfo)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
}


