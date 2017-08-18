import Foundation

class EntityService {
    func get() -> SomeEntity {
        let entity = SomeEntity()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            entity.data.value = "Downloaded!"
        }
        return entity
    }
}
