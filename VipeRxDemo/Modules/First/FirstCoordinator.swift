import Foundation
import UIKit

class FirstScreenCoordinator: FirstScreenCoordinating {
    var rootViewController: UIViewController!
    weak var output: FirstScreenCoordinatingOutput!

    static func assemble(output: FirstScreenCoordinatingOutput) -> FirstScreenCoordinating {
        let coordinator = FirstScreenCoordinator()
        let view = FirstScreenViewController.from(storyboard: "Main")
        let presenter = FirstScreenPresenter()
        let interactor = FirstScreenInteractor()
        
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
