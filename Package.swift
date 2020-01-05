// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Compression",
    products: [
        .library(
            name: "Compression",
            targets: ["Compression"]),
    ],
    dependencies: [
        .package(path: "../Stream"),
        .package(path: "../Test")
    ],
    targets: [
        .target(
            name: "Compression",
            dependencies: ["Stream"]),
        .testTarget(
            name: "CompressionTests",
            dependencies: ["Compression", "Test"]),
        .target(
            name: "CompressionBenchmark",
            dependencies: [
                "Measure",
                "Stream",
                "Compression",
            ],
            path: "./Benchmark"
        )
    ]
)
