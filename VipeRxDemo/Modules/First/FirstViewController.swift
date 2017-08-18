import Foundation
import UIKit

class FirstViewController: UIViewController, FirstViewable {
    var presenter: FirstPresenting!

    var data: SomeEntity!

    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
