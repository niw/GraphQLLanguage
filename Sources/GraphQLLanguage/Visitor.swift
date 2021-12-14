//
//  Visitor.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

public typealias Visitable = LanguageNode

public protocol Visitor {
    func visit(on visitable: Visitable) throws
}

private struct BlockVisitor: Visitor {
    var block: (Visitable) -> Void

    func visit(on visitable: Visitable) throws {
        block(visitable)
    }
}

extension Visitable {
    public func visit(with visitor: Visitor) throws {
        // Use reflection to depth-first traverse `Visitable`.
        let mirror = Mirror(reflecting: self)

        for child in mirror.children {
            // Reveal `Optional<T>` in `Any` by matching to `Optional<Any>` (`Any?`.)
            var childValue: Any
            switch child.value {
            case let optional as Any?:
                guard let value = optional else {
                    // `.none` is not visitable.
                    continue
                }
                childValue = value
            default:
                childValue = child.value
            }

            // These are known child field representation in each `Visitable`
            switch childValue {
            case let visitable as Visitable:
                try visitable.visit(with: visitor)
            case let array as [Visitable]:
                for visitable in array {
                    try visitable.visit(with: visitor)
                }
            // See `ObjectValue`
            case let dictionary as [String: Visitable]:
                for (_, visitable) in dictionary {
                    try visitable.visit(with: visitor)
                }
            default:
                break
            }
        }
        try visitor.visit(on: self)
    }

    public func visit(with visitor: @escaping (Visitable) -> Void) throws {
        try visit(with: BlockVisitor(block: visitor))
    }
}
