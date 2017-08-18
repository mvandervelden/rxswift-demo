import Foundation
import UIKit

class SecondViewController: UIViewController, SecondViewable {
    var presenter: SecondPresenting!
    weak var data: SomeEntity!

    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
