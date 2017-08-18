import Foundation
import UIKit
import RxCocoa
import RxSwift

class FirstViewController: UIViewController, FirstViewable {
    var presenter: FirstPresenting!

    let disposeBag = DisposeBag()

    var data: SomeEntity!

    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        data.data.asObservable()
            .map({ $0 == "" ? "∅" : $0 })
            .bind(to: dataLabel.rx.text)
            .addDisposableTo(disposeBag)
    }
}
