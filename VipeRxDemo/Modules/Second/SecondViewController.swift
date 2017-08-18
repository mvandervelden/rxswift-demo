import Foundation
import UIKit
import RxSwift
import RxCocoa

class SecondViewController: UIViewController, SecondViewable {
    var presenter: SecondPresenting!

    let disposeBag = DisposeBag()

    var data: SomeEntity!

    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        dataTextField.rx.text
            .orEmpty
            .bind(to: data.data)
            .disposed(by: disposeBag)
    }
}
