import UIKit

extension UIViewController {
    static func from<T: UIViewController>(storyboard: String) -> T {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let identifier = String(describing: T.self)
        let optionalViewController = storyboard.instantiateViewController(withIdentifier: identifier)

        guard let viewController = optionalViewController as? T else {
            fatalError("Couldn’t instantiate view controller with identifier \(identifier)")
        }

        return viewController
    }
}
