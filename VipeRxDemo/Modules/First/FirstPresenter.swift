import Foundation

class FirstPresenter: FirstPresenting {
    var interactor: FirstInteracting!
    weak var coordinator: FirstCoordinating!
    weak var view: FirstViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension FirstPresenter: FirstInteractingOutput {

}
