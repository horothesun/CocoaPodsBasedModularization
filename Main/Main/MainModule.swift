import Swinject
import Common

final class MainModule {

    static let shared = MainModule()

    private init() { }

    let assembler = Assembler([
        AdderAssembly()
    ])
}
