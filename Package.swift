// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiveViewNativeFacebookSignIn",
    platforms: [.iOS(.v17), .macOS(.v14), .tvOS(.v17), .watchOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LiveViewNativeFacebookSignIn",
            targets: ["LiveViewNativeFacebookSignIn"]),
    ],
    dependencies: [
        .package(url: "https://github.com/liveview-native/liveview-client-swiftui", branch: "main"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk", .upToNextMajor(from: "17.0.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LiveViewNativeFacebookSignIn",
            dependencies: [
                .product(name: "LiveViewNative", package: "liveview-client-swiftui"),
                .product(name: "LiveViewNativeStylesheet", package: "liveview-client-swiftui"),
                .product(name: "FacebookLogin", package: "facebook-ios-sdk"),
            ],
            path: "./swiftui"
        ),
    ]
)
