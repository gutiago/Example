// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import CompilerPluginSupport
import PackageDescription

let package = Package(
  name: "Macros",
  platforms: [
    .macOS(.v14),
    .iOS(.v15),
    .tvOS(.v13),
    .watchOS(.v6),
    .macCatalyst(.v13),
  ],
  products: [
    .library(
      name: "Macros",
      targets: ["Macros"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0"),
  ],
  targets: [
    .macro(
      name: "MacrosImpl",
      dependencies: [
        .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
        .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
      ]),

    // Library that exposes a macro as part of its API, which is used in client programs.
    .target(name: "Macros", dependencies: ["MacrosImpl"]),

    // A test target used to develop the macro implementation.
    .testTarget(
      name: "MacrosTests",
      dependencies: [
        "MacrosImpl",
        .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
      ]),
  ])
