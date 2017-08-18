import UIKit


protocol RootCoordinating: class {
    weak var rootViewController: UIViewController! { get set }

    static func assemble() -> RootCoordinating

    func present(window: UIWindow)
}

