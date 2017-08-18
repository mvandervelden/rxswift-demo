import Foundation
import UIKit

class SecondViewController: UIViewController, SecondViewable {
    var presenter: SecondPresenting!

    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
