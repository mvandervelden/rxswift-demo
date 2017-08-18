import Foundation
import UIKit
import RxSwift
import RxCocoa

class SecondViewController: UIViewController, SecondViewable {
    let disposeBag = DisposeBag()

    var data: SomeEntity!

    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        dataTextField.rx.text
            .orEmpty
            .bind(to: data.data)
            .disposed(by: disposeBag)

        data.isValid
            .subscribe(onNext: { [weak self] isValid in
                UIView.animate(withDuration: 0.2) {
                    let color: UIColor = isValid ? .green : .clear
                    self?.titleLabel.layer.backgroundColor = color.cgColor
                }
            })
            .disposed(by: disposeBag)
    }
}
