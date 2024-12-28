// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KpeHelperKit",
    products: [
        .library(
            name: "KpeHelperKit",
            targets: ["KpeAPIHelper"]),
    ],
    targets: [
        .binaryTarget(
            name: "KpeAPIHelper",
            path: "Sources/FrameWorks/KpeAPIHelper.xcframework"
        )
    ]
)