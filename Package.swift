// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "liquid",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "Liquid", targets: ["Liquid"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.41.0"),
        .package(url: "https://github.com/MoveUpwardsDev/liquid-kit.git", .branch("feature/get-object")),
    ],
    targets: [
        .target(name: "Liquid", dependencies: [
             .product(name: "Vapor", package: "vapor"),
             .product(name: "LiquidKit", package: "liquid-kit"),
        ]),
        .testTarget(name: "LiquidTests", dependencies: ["Liquid"]),
    ]
)
