import Foundation

class FirstScreenPresenter: FirstScreenPresenting {
    var interactor: FirstScreenInteracting!
    weak var coordinator: FirstScreenCoordinating!
    weak var view: FirstScreenViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension FirstScreenPresenter: FirstScreenInteractingOutput {

}
