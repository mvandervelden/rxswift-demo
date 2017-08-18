import Foundation
import UIKit

class SecondViewController: UIViewController, SecondViewable {
    var presenter: SecondPresenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension SecondViewController {

    static func from(storyboard: String) -> SecondViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        return vc as! SecondViewController
    }

}
