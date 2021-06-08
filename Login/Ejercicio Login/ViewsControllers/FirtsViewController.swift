import UIKit

//EJERCICIO: Vamos a crear una app, que como primera vista tenga un login, con dos UITextField y un botón, cuando pulsamos sobre el botón, recogemos el valor de las dos cajas de texto, comprobamos que no sean nil ni estén vacías, si están vacías, mostraremos un mensaje por consolo diciendo que todos los datos son requeridos, de lo contrario, navegaremos a una nueva pantalla la cual mostrará estos dos datos por pantalla, con una etiqueta UILabel.



class FirtsViewController: UIViewController {
    
    //MATCH: UI
    @IBOutlet weak var textError: UILabel!
    @IBOutlet weak var textUser: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    //MATCH: VARIABLES
    var userOK: String?
    var passwordOK: String?
    
    
    
    //MATCH: NAVIGATION
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1️⃣ \(navigationController?.viewControllers)")
        
        textUser.becomeFirstResponder()
        title = "Login"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("PREPARE")
        
        if segue.identifier == "segueToSecond" {
            
            guard let secondViewController = segue.destination as? SecondViewController else {return}
            
            textError.text = ""
            
            guard let secureUserOK = userOK else {return}
            guard let securePasswordOK = passwordOK else {return}
            
            secondViewController.userRecieved = secureUserOK
            secondViewController.passwordRecieved = securePasswordOK
            
        } 
    }
    
    
    @IBAction func btClickFirts(_ sender: Any) {
        
        guard let secureUser = textUser.text, !secureUser.isEmpty else {
            textError.text = "ERROR: usuario o contraseña no valido"
            print("User invalido")
            return}
        
        guard let securePassword = textPassword.text, !securePassword.isEmpty else {
            textError.text = "ERROR: usuario o contraseña no valido"
            print("Password invalido")
            return}
        
        userOK = secureUser
        print(userOK)
        passwordOK = securePassword
        print(passwordOK)
        
        performSegue(withIdentifier: "segueToSecond", sender: self)
    }

}
