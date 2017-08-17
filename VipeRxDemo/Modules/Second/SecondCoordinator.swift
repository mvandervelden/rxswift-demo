import Foundation
import UIKit

class SecondScreenCoordinator: SecondScreenCoordinating {
    var rootViewController: UIViewController!
    weak var output: SecondScreenCoordinatingOutput!

    static func assemble(output: SecondScreenCoordinatingOutput) -> SecondScreenCoordinating {
        let coordinator = SecondScreenCoordinator()
        let view = SecondScreenViewController.from(storyboard: "Main")
        let presenter = SecondScreenPresenter()
        let interactor = SecondScreenInteractor()
        
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
