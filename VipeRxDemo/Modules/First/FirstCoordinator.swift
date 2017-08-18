import Foundation
import UIKit

class FirstCoordinator: FirstCoordinating {
    var rootViewController: UIViewController!
    weak var output: FirstCoordinatingOutput!

    static func assemble(output: FirstCoordinatingOutput, data: SomeEntity) -> FirstCoordinating {
        let coordinator = FirstCoordinator()
        let view: FirstViewController = UIViewController.from(storyboard: "Main")

        view.data = data

        coordinator.rootViewController = view
        coordinator.output = output

        return coordinator
    }
}
