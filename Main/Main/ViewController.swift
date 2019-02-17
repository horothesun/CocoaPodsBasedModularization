import UIKit
import SwinjectAutoregistration
import Common

final class ViewController: UIViewController {

    private let resolver = MainModule.shared.assembler.resolver

    private lazy var adder: Adder = resolver~>

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Result = \(adder.add(1, 9))")
    }
}
