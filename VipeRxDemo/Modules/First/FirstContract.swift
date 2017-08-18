import Foundation
import UIKit

protocol FirstCoordinatingOutput: class {

}

protocol FirstCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: FirstCoordinatingOutput! { get set }

    static func assemble(output: FirstCoordinatingOutput, data: SomeEntity) -> FirstCoordinating

}

protocol FirstPresenting {

    var interactor: FirstInteracting! { get set }
    var coordinator: FirstCoordinating! { get set }
    weak var view: FirstViewable! { get set }

    func viewDidLoad()

}

protocol FirstInteracting: class {

    weak var output: FirstInteractingOutput! { get set }

}

protocol FirstInteractingOutput: class {

}

protocol FirstViewable: class {
    
    var presenter: FirstPresenting! { get set }
    var data: SomeEntity! { get set }
}
