import UIKit

class RootCoordinator: RootCoordinating {
    var rootViewController: UIViewController!

    static func assemble() -> RootCoordinating {
        let coordinator = RootCoordinator()
        let view = coordinator.createTabBarController()

        coordinator.rootViewController = view

        return coordinator
    }

    func present(window: UIWindow) {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

    private func createTabBarController() -> UIViewController {
        let tabBarController = UITabBarController()
        let sharedEntity = SomeEntity()

        let firstCoordinator = FirstCoordinator.assemble(output: self, data: sharedEntity)
        let secondCoordinator = SecondCoordinator.assemble(output: self, data: sharedEntity)

        tabBarController.viewControllers = [
            firstCoordinator.rootViewController,
            secondCoordinator.rootViewController
        ]
        
        return tabBarController
    }
}

extension RootCoordinator: FirstCoordinatingOutput {}
extension RootCoordinator: SecondCoordinatingOutput {}
