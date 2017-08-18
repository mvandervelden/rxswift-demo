import Foundation

class SecondPresenter: SecondPresenting {
    var interactor: SecondInteracting!
    var coordinator: SecondCoordinating!
    weak var view: SecondViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension SecondPresenter: SecondInteractingOutput {

}
