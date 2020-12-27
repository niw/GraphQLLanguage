GraphQL Language
================

A simple GraphQL language parser library for Swift.

This library provides a plain Swift representation of GraphQL language
implemented by using [ANTLR4 GraphQL Grammar](https://github.com/niw/antlr4-graphql-grammar),
that is a language independent implementation of ANTLR4 grammar for GraphQL language.

Try it
------

Open `Examples/Example.xcodeproj` in Xcode and Run `Example` scheme.

It builds a tiny command line tool and runs it for [Example.graphql](Examples/Example.graphql),
then print Swift presentation of it.

Usage
-----

Add the following lines to your `Package.swift` or use Xcode “Add Package Dependency…” menu.

```swift
// In your `Package.swift`

dependencies: [
    .package(name: "GraphQLLanguage", url: "https://github.com/niw/GraphQLLanguage", ...),
    ...
],
targets: [
    .target(
        name: ...,
        dependencies: [
            .product(name: "GraphQLLanguage", package: "GraphQLLanguage"),
            ...
        ]
    ),
    ...
]
```

License
-------

This library contains multiple products such as [ANTLR4 runtime](Vendor/antlr4).
See license file under each directory.
