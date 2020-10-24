import XCTest
@testable import Weak

final class WeakTests: XCTestCase {
    func testWeakClass() {
        let weak = Weak<BarClass>()

        _ = {
            let strong = BarClass()
            weak.value = strong
        }()

        XCTAssertNil(weak.value)
    }

    func testWeakProtocol() {
        let weak = Weak<FooProtocol>()

        _ = {
            let strong = BarClass()
            weak.value = strong as FooProtocol
        }()

        XCTAssertNil(weak.value)
    }
}

protocol FooProtocol {}

class BarClass: FooProtocol {}
