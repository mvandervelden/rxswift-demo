import Foundation
import UIKit

class FirstViewController: UIViewController, FirstViewable {
    var presenter: FirstPresenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension FirstViewController {

    static func from(storyboard: String) -> FirstViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        return vc as! FirstViewController
    }

}
