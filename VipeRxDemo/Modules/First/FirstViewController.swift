import Foundation
import UIKit

class FirstViewController: UIViewController, FirstViewable {
    var presenter: FirstPresenting!

    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
