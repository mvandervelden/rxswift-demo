import Foundation
import RxSwift

struct FirstEntityViewModel {
    let text: Observable<String>
    
    init(entity: SomeEntity) {
        text = entity.data.asObservable()
            .map { $0 == "" ? "∅" : $0 }
    }
}
