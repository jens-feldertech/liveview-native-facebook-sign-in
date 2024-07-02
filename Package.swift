// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "LiveViewNativeFacebookSignIn",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "LiveViewNativeFacebookSignIn",
            targets: ["LiveViewNativeFacebookSignIn"]),
    ],
    dependencies: [
        .package(url: "https://github.com/liveview-native/liveview-client-swiftui", branch: "main"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk", .upToNextMajor(from: "17.0.2")),
    ],
    targets: [
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