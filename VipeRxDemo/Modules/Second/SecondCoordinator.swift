import Foundation
import UIKit

class SecondCoordinator: SecondCoordinating {
    var rootViewController: UIViewController!
    weak var output: SecondCoordinatingOutput!

    static func assemble(output: SecondCoordinatingOutput) -> SecondCoordinating {
        let coordinator = SecondCoordinator()
        let view: SecondViewController = UIViewController.from(storyboard: "Main")
        let presenter = SecondPresenter()
        let interactor = SecondInteractor()
        
        presenter.interactor = interactor
        presenter.view = view
        presenter.coordinator = coordinator

        view.presenter = presenter

        interactor.output = presenter
        
        coordinator.rootViewController = view
        coordinator.output = output

        return coordinator
    }
}
