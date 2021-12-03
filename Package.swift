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
    targets: [
        .target(
            name: "GraphQLLanguage",
            dependencies: [
                .target(name: "Antlr4")
            ]),
        .target(
            name: "Antlr4",
            dependencies: [],
            path: "Vendor/antlr4/runtime/Swift/Sources/Antlr4"),
        .testTarget(
            name: "GraphQLLanguageTests",
            dependencies: [
                .target(name: "GraphQLLanguage")
            ])
    ]
)
