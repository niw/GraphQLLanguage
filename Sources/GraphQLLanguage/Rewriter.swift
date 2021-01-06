//
//  Rewriter.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

public typealias Rewritable = Visitable

public protocol Rewriter {
    func rewrite(_ rewritable: Rewritable) -> String?
}

private struct BlockRewriter: Rewriter {
    var block: (Rewritable) -> String?

    func rewrite(_ rewritable: Rewritable) -> String? {
        block(rewritable)
    }
}

private extension Collection {
    var range: Range<Index> {
        startIndex..<endIndex
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

        guard let rewritingString = rewriter.rewrite(visitable) else {
            return
        }

        let rewriting = Rewriting(range: sourceUnicodeScalars.range, string: rewritingString)
        rewritings.append(rewriting)
    }
}

enum RewriteError: Error {
    case unavailableSource
    case conflictedRewritings
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
                throw RewriteError.conflictedRewritings
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
