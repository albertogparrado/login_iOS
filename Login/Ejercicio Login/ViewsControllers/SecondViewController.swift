import UIKit

class SecondViewController: UIViewController {
    
    //MARK: OUTLET
    
    @IBOutlet weak var textUser2: UILabel!
    @IBOutlet weak var textPassword2: UILabel!
    @IBOutlet weak var fondoBlanco: UIStackView!
    
    //MARK: VARIABLES
    var userRecieved: String = ""
    var passwordRecieved: String = ""

    //MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        styleWhite()
        
        self.title = "Datos usuario"
        
        textUser2.text = userRecieved
        textPassword2.text = passwordRecieved
    }
    
    func styleWhite(){
        fondoBlanco.layer.cornerRadius = 10
    }
    
    }
    

    

