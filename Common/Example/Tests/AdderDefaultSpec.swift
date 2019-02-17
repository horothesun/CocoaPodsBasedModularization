import Quick
import Nimble
@testable import Common

final class AdderDefaultSpec: QuickSpec {

    override func spec() {
        super.spec()

        describe("AdderDefault") {
            var adder: AdderDefault!
            beforeEach { adder = AdderDefault() }

            describe("add") {

                context("lhs is 5") {
                    var lhs: Int!
                    beforeEach { lhs = 5 }

                    context("rhs is 3") {
                        var rhs: Int!
                        beforeEach { rhs = 3 }

                        it("must return 8") {
                            expect(adder.add(lhs, rhs)).to(equal(8))
                        }
                    }
                }
            }
        }
    }
}
