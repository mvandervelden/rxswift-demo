import Foundation
import UIKit

protocol FirstScreenCoordinatingOutput: class {

}

protocol FirstScreenCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: FirstScreenCoordinatingOutput! { get set }

    static func assemble(output: FirstScreenCoordinatingOutput) -> FirstScreenCoordinating

}

protocol FirstScreenPresenting {

    var interactor: FirstScreenInteracting! { get set }
    var coordinator: FirstScreenCoordinating! { get set }
    weak var view: FirstScreenViewable! { get set }

    func viewDidLoad()

}

protocol FirstScreenInteracting: class {

    weak var output: FirstScreenInteractingOutput! { get set }

}

protocol FirstScreenInteractingOutput: class {

}

protocol FirstScreenViewable: class {
    
    var presenter: FirstScreenPresenting! { get set }

}
