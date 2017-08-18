import UIKit

protocol RootCoordinatingOutput: class {

}

protocol RootCoordinating: class {
    weak var rootViewController: UIViewController! { get set }
    weak var output: RootCoordinatingOutput! { get set }

    static func assemble(output: RootCoordinatingOutput) -> RootCoordinating
}

