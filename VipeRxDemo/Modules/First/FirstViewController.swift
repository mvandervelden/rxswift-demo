import Foundation
import UIKit
import RxCocoa
import RxSwift

class FirstViewController: UIViewController, FirstViewable {
    let disposeBag = DisposeBag()

    var data: FirstEntityViewModel!

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        data.text.asObservable()
            .bind(to: dataLabel.rx.text)
            .addDisposableTo(disposeBag)
    }
}
