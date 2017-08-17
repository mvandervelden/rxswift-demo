import Foundation

class SecondScreenPresenter: SecondScreenPresenting {
    var interactor: SecondScreenInteracting!
    weak var coordinator: SecondScreenCoordinating!
    weak var view: SecondScreenViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension SecondScreenPresenter: SecondScreenInteractingOutput {

}
