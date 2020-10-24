public final class Weak<Wrapped> {

    public init(_ value: Wrapped? = nil) {
        self.value = value
    }

    public var value: Wrapped? {
        get { _value as? Wrapped }
        set { _value = newValue as AnyObject }
    }

    private weak var _value: AnyObject?
}
