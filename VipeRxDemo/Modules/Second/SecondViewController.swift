import Foundation
import UIKit

class SecondScreenViewController: UIViewController, SecondScreenViewable {
    var presenter: SecondScreenPresenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension SecondScreenViewController {

    static func from(storyboard: String) -> SecondScreenViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondScreenViewController")
        return vc as! SecondScreenViewController
    }

}
