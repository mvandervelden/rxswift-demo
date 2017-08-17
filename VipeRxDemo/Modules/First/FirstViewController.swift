import Foundation
import UIKit

class FirstScreenViewController: UIViewController, FirstScreenViewable {
    var presenter: FirstScreenPresenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension FirstScreenViewController {

    static func from(storyboard: String) -> FirstScreenViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FirstScreenViewController")
        return vc as! FirstScreenViewController
    }

}
