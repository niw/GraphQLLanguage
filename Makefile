CURL = curl
GIT = git
JAVA = java
SWIFT = swift
SWIFTLINT = swiftlint

ANTLR4_JAR_URL = https://www.antlr.org/download/antlr-4.9.3-complete.jar
ANTLR4_GRAPHQL_GRAMMAR_URL = https://github.com/niw/antlr4-graphql-grammar.git

.PHONY: all
all: build

.PHONY: clean
clean:
	$(GIT) clean -dffX

.PHONY: correct
correct:
	$(SWIFTLINT) autocorrect

.PHONY: lint
lint:
	$(SWIFTLINT)

antlr4.jar:
	$(CURL) -o "$@" $(ANTLR4_JAR_URL)

Vendor/antlr4-graphql-grammar:
	$(GIT) clone $(ANTLR4_GRAPHQL_GRAMMAR_URL)  "$@"
	touch "$@"

Vendor/antlr4-graphql-grammar/src/main/antlr4/GraphQL.g4: Vendor/antlr4-graphql-grammar

Sources/GraphQLLanguage/Generated: Vendor/antlr4-graphql-grammar/src/main/antlr4/GraphQL.g4 antlr4.jar
	$(JAVA) -jar antlr4.jar \
		-o "$@" \
		-message-format gnu \
		-Dlanguage=Swift \
		-DaccessLevel=internal \
		-Xexact-output-dir \
		"$<"
	touch "$@"

.PHONY: grammar
grammar: Sources/GraphQLLanguage/Generated

.PHONY: test
test:
	$(SWIFT) test

.PHONY: build
build: correct debug

.PHONY: debug
debug: Sources/*/*.swift
	$(SWIFT) build --configuration "$@"

.PHONY: release
release: Sources/*/*.swift
	$(SWIFT) build --configuration "$@"

