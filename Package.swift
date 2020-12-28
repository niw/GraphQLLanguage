// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphQLLanguage",
    products: [
        .library(
            name: "GraphQLLanguage-Auto",
            targets: [
                "GraphQLLanguage"
            ]),
        .library(
            name: "GraphQLLanguage",
            type: .dynamic,
            targets: [
                "GraphQLLanguage"
            ])
    ],
    dependencies: [
        .package(
            name: "Antlr4",
            path: "Vendor/antlr4/runtime/Swift")
    ],
    targets: [
        .target(
            name: "GraphQLLanguage",
            dependencies: [
                .product(name: "Antlr4", package: "Antlr4")
            ],
            exclude: [
                "Generated/GraphQL.interp",
                "Generated/GraphQL.tokens",
                "Generated/GraphQLLexer.interp",
                "Generated/GraphQLLexer.tokens"
            ]),
        .testTarget(
            name: "GraphQLLanguageTests",
            dependencies: [
                .target(name: "GraphQLLanguage")
            ])
    ]
)
