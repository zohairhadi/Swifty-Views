// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swifty-View",
    platforms: [
            .iOS(.v13),
            .macOS(.v10_15),
            .tvOS(.v13),
            .watchOS(.v6)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swifty-View",
            targets: ["swifty-View"]),
    ],
    targets: [
        .target(
            name: "swifty-View"),
        // other targets if any
    ]
)


