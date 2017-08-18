import Foundation

class SecondPresenter: SecondPresenting {
    var interactor: SecondInteracting!
    weak var coordinator: SecondCoordinating!
    weak var view: SecondViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension SecondPresenter: SecondInteractingOutput {

}
