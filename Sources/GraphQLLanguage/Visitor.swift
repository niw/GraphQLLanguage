//
//  Visitor.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

public protocol Visitable {
}

public protocol Visitor {
    func visit(on visitable: Visitable)
}

private struct BlockVisitor: Visitor {
    var block: (Visitable) -> Void

    func visit(on visitable: Visitable) {
        block(visitable)
    }
}

extension Visitable {
    public func visit(with visitor: Visitor) {
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
                visitable.visit(with: visitor)
            case let array as [Visitable]:
                for visitable in array {
                    visitable.visit(with: visitor)
                }
            // See `ObjectValue`
            case let dictionary as [String: Visitable]:
                for (_, visitable) in dictionary {
                    visitable.visit(with: visitor)
                }
            default:
                break
            }
        }
        visitor.visit(on: self)
    }

    public func visit(with visitor: @escaping (Visitable) -> Void) {
        visit(with: BlockVisitor(block: visitor))
    }
}

// MARK: -

extension Document: Visitable {
}
extension OperationDefinition: Visitable {
}
extension Field: Visitable {
}
extension Argument: Visitable {
}
extension FragmentSpread: Visitable {
}
extension FragmentDefinition: Visitable {
}
extension InlineFragment: Visitable {
}
extension IntValue: Visitable {
}
extension FloatValue: Visitable {
}
extension BooleanValue: Visitable {
}
extension StringValue: Visitable {
}
extension NullValue: Visitable {
}
extension EnumValue: Visitable {
}
extension ListValue: Visitable {
}
extension ObjectValue: Visitable {
}
extension Variable: Visitable {
}
extension VariableDefinition: Visitable {
}
extension NamedType: Visitable {
}
extension ListType: Visitable {
}
extension Directive: Visitable {
}
extension SchemaDefinition: Visitable {
}
extension RootOperationTypeDefinition: Visitable {
}
extension SchemaExtension: Visitable {
}
extension OperationTypeDefinition: Visitable {
}
extension Description: Visitable {
}
extension ScalarTypeDefinition: Visitable {
}
extension ScalarTypeExtension: Visitable {
}
extension ObjectTypeDefinition: Visitable {
}
extension FieldDefinition: Visitable {
}
extension InputValueDefinition: Visitable {
}
extension ObjectTypeExtension: Visitable {
}
extension InterfaceTypeDefinition: Visitable {
}
extension InterfaceTypeExtension: Visitable {
}
extension UnionTypeDefinition: Visitable {
}
extension UnionTypeExtension: Visitable {
}
extension EnumTypeDefinition: Visitable {
}
extension EnumValueDefinition: Visitable {
}
extension EnumTypeExtension: Visitable {
}
extension InputObjectTypeDefinition: Visitable {
}
extension InputObjectTypeExtension: Visitable {
}
extension DirectiveDefinition: Visitable {
}
