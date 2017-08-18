import Foundation
import UIKit

class FirstCoordinator: FirstCoordinating {
    var rootViewController: UIViewController!
    weak var output: FirstCoordinatingOutput!

    static func assemble(output: FirstCoordinatingOutput, data: SomeEntity) -> FirstCoordinating {
        let coordinator = FirstCoordinator()
        let view: FirstViewController = UIViewController.from(storyboard: "Main")
        let presenter = FirstPresenter()
        let interactor = FirstInteractor()
        
        presenter.interactor = interactor
        presenter.view = view
        presenter.coordinator = coordinator

        view.presenter = presenter
        view.data = data

        interactor.output = presenter
        
        coordinator.rootViewController = view
        coordinator.output = output

        return coordinator
    }
}
