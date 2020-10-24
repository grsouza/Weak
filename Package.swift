// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Weak",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .watchOS(.v2),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "Weak",
            targets: ["Weak"]
        ),
    ],
    targets: [
        .target(
            name: "Weak"),
        .testTarget(
            name: "WeakTests",
            dependencies: ["Weak"]
        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
