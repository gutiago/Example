// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Network",
  platforms: [
    .macOS(.v14),
    .iOS(.v15),
    .tvOS(.v13),
    .watchOS(.v6),
    .macCatalyst(.v13),
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "Network",
      targets: ["Network"]),
    .library(
      name: "NetworkTestSupporting",
      targets: ["NetworkTestSupporting"]),
  ],
  dependencies: [
    .package(name: "Macros", path: "../Macros"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "Network",
      dependencies: [
        .product(name: "Macros", package: "Macros"),
      ]),
    .target(
      name: "NetworkTestSupporting",
      dependencies: [
        "Network",
      ]),
    .testTarget(
      name: "NetworkTests",
      dependencies: [
        "Network",
        .product(name: "Macros", package: "Macros"),
      ]),
  ]
)
