import Swinject
import SwinjectAutoregistration

public protocol Adder {
    func add(_ lhs: Int, _ rhs: Int) -> Int
}

public struct AdderAssembly: Assembly {

    public init() { }

    public func assemble(container: Container) {
        container.autoregister(Adder.self, initializer: AdderDefault.init)
    }
}

struct AdderDefault: Adder {
    func add(_ lhs: Int, _ rhs: Int) -> Int { return lhs + rhs }
}
