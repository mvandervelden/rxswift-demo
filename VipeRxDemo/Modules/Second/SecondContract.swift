import Foundation
import UIKit

protocol SecondCoordinatingOutput: class {
}

protocol SecondCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: SecondCoordinatingOutput! { get set }

    static func assemble(output: SecondCoordinatingOutput, data: SomeEntity) -> SecondCoordinating

}

protocol SecondViewable: class {
    weak var data: SomeEntity! { get set }
}
