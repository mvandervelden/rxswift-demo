import Foundation
import UIKit

protocol SecondScreenCoordinatingOutput: class {

}

protocol SecondScreenCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: SecondScreenCoordinatingOutput! { get set }

    static func assemble(output: SecondScreenCoordinatingOutput) -> SecondScreenCoordinating

}

protocol SecondScreenPresenting {

    var interactor: SecondScreenInteracting! { get set }
    var coordinator: SecondScreenCoordinating! { get set }
    weak var view: SecondScreenViewable! { get set }

    func viewDidLoad()

}

protocol SecondScreenInteracting: class {

    weak var output: SecondScreenInteractingOutput! { get set }

}

protocol SecondScreenInteractingOutput: class {

}

protocol SecondScreenViewable: class {
    
    var presenter: SecondScreenPresenting! { get set }

}
