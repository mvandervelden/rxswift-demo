import Foundation
import RxSwift

class SomeEntity {
    let data = Variable("")

    let isValid: Observable<Bool>

    init() {
        isValid = data.asObservable()
            .map { $0.count > 4 }
    }
}
