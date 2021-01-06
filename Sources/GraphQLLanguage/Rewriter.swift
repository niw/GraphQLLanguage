//
//  Rewriter.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

public struct Rewritable {
    public var visitable: Visitable

    public var sourceRange: Range<String.UnicodeScalarView.Index>
    public var sourceUnicodeScalars: String.UnicodeScalarView.SubSequence
}

public protocol Rewriter {
    func rewrite(_ rewritable: Rewritable) -> String?
}

private struct BlockRewriter: Rewriter {
    var block: (Rewritable) -> String?

    func rewrite(_ rewritable: Rewritable) -> String? {
        block(rewritable)
    }
}

private class RewritingVisitor: Visitor {
    struct Rewriting {
        let range: Range<String.UnicodeScalarView.Index>
        let string: String
    }

    let rewriter: Rewriter
    var rewritings: [Rewriting] = []

    init(rewriter: Rewriter) {
        self.rewriter = rewriter
    }

    func visit(on visitable: Visitable) {
        guard let sourceUnicodeScalars = visitable.sourceUnicodeScalars else {
            return
        }

        let sourceRange = sourceUnicodeScalars.startIndex..<sourceUnicodeScalars.endIndex
        let rewritable = Rewritable(visitable: visitable,
                                    sourceRange: sourceRange,
                                    sourceUnicodeScalars: sourceUnicodeScalars)

        guard let rewritingString = rewriter.rewrite(rewritable) else {
            return
        }

        let rewriting = Rewriting(range: sourceRange, string: rewritingString)
        rewritings.append(rewriting)
    }
}

enum RewriteError: Error {
    case unavailableSource
    case overwrappedRanges
}

extension Document {
    public func rewrite(with rewriter: Rewriter) throws -> String {
        guard let source = source else {
            throw RewriteError.unavailableSource
        }
        var unicodeScalars = source.string.unicodeScalars

        let rewritingVisitor = RewritingVisitor(rewriter: rewriter)
        visit(with: rewritingVisitor)

        // Sort rewritings by each lower bounds.
        let rewritings = rewritingVisitor.rewritings.sorted { a, b in
            a.range.lowerBound < b.range.lowerBound
        }

        // Ensure if each lower bound doesn't overwrap with previous upper bound.
        var upperBound = unicodeScalars.startIndex
        for rewriting in rewritings {
            guard upperBound <= rewriting.range.lowerBound else {
                throw RewriteError.overwrappedRanges
            }
            upperBound = rewriting.range.upperBound
        }

        // Rewrite backwards.
        for rewriting in rewritings.reversed() {
            unicodeScalars.replaceSubrange(rewriting.range, with: rewriting.string.unicodeScalars)
        }

        return String(unicodeScalars)
    }

    public func rewrite(with rewriter: @escaping (Rewritable) -> String?) throws -> String {
        try rewrite(with: BlockRewriter(block: rewriter))
    }
}
