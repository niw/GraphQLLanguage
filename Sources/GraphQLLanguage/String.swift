//
//  String.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Foundation

extension String {
    init<S>(_ unicodeScalarSequence: S) where S : Sequence, S.Element == Unicode.Scalar {
        var unicodeScalarView = UnicodeScalarView()
        unicodeScalarView.append(contentsOf: unicodeScalarSequence)
        self.init(unicodeScalarView)
    }
}
