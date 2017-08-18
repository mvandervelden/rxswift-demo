import Foundation
import UIKit

protocol FirstCoordinatingOutput: class {

}

protocol FirstCoordinating: class {

    weak var rootViewController: UIViewController! { get set }
    weak var output: FirstCoordinatingOutput! { get set }

    static func assemble(output: FirstCoordinatingOutput, data: SomeEntity) -> FirstCoordinating

}

protocol FirstViewable: class {
    var data: FirstEntityViewModel! { get set }
}
