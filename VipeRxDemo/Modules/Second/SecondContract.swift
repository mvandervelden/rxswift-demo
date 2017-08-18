import Foundation
import UIKit

protocol SecondCoordinatingOutput: class {

}

protocol SecondCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: SecondCoordinatingOutput! { get set }

    static func assemble(output: SecondCoordinatingOutput, data: SomeEntity) -> SecondCoordinating

}

protocol SecondPresenting {

    var interactor: SecondInteracting! { get set }
    var coordinator: SecondCoordinating! { get set }
    weak var view: SecondViewable! { get set }

    func viewDidLoad()

}

protocol SecondInteracting: class {

    weak var output: SecondInteractingOutput! { get set }

}

protocol SecondInteractingOutput: class {

}

protocol SecondViewable: class {
    
    var presenter: SecondPresenting! { get set }
    weak var data: SomeEntity! { get set }
}
