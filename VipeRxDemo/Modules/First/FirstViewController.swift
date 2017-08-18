import Foundation
import UIKit
import RxCocoa
import RxSwift

class FirstViewController: UIViewController, FirstViewable {
    let disposeBag = DisposeBag()

    var data: SomeEntity!

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        data.data.asObservable()
            .map { $0 == "" ? "∅" : $0 }
            .bind(to: dataLabel.rx.text)
            .addDisposableTo(disposeBag)

        data.isValid
            .subscribe(onNext: { [weak self] isValid in
                self?.titleLabel.backgroundColor = isValid ? .green : .clear
            })
            .disposed(by: disposeBag)
    }
}
