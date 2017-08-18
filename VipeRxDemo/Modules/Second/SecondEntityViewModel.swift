import Foundation
import RxSwift

struct SecondEntityViewModel {
    let text: Variable<String>
    let isValid: Observable<Bool>

    init(entity: SomeEntity) {

        text = entity.data

        isValid = entity.data.asObservable()
            .map { $0.count > 4 }
    }
}
