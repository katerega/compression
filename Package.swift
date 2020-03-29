// swift-tools-version:5.0
import PackageDescription

#if !canImport(ObjectiveC)
let compression = "Compression"
#else
let compression = "_Compression"
#endif

let package = Package(
    name: compression,
    products: [
        .library(
            name: compression,
            targets: [compression]),
    ],
    dependencies: [
        .package(path: "../stream"),
        .package(path: "../test")
    ],
    targets: [
        .target(
            name: compression,
            dependencies: ["Stream"],
            path: "./Sources/Compression"),
        .testTarget(
            name: compression + "Tests",
            dependencies: [.init(stringLiteral: compression), "Test"],
            path: "./Tests/CompressionTests"),
    ]
)
