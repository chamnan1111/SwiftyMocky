import Foundation

@available(iOS 14, *) @objc
protocol ProtocolWithAttributes: AutoMockable {
    func funcA()
}

//sourcery: AutoMockable
protocol ProtocolWithAttributesB {
    @available(iOS 14, *)
    func funcB(_ dependency: ProtocolWithAttributes)

    @discardableResult @inlinable func inlinableFunc(_ val: Int) -> Int
}
