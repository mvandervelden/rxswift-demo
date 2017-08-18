import Foundation
import UIKit

class SecondCoordinator: SecondCoordinating {
    var rootViewController: UIViewController!
    weak var output: SecondCoordinatingOutput!

    static func assemble(output: SecondCoordinatingOutput, data: SomeEntity) -> SecondCoordinating {
        let coordinator = SecondCoordinator()
        let view: SecondViewController = UIViewController.from(storyboard: "Main")

        view.data = SecondEntityViewModel(entity: data)

        coordinator.rootViewController = view
        coordinator.output = output

        return coordinator
    }
}
