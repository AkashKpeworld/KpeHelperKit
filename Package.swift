// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KpeHelperKit",
    products: [
        .library(
            name: "KpeHelperKit",
            targets: ["KpeAPIHelper", "KpeRouteHelper", "KpePropertyWrapper", "KpeExtentionKit", "KpeAdMobKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "KpeAPIHelper",
            path: "Sources/FrameWorks/KpeAPIHelper.xcframework"
        ),
        .binaryTarget(
            name: "KpeRouteHelper",
            path: "Sources/FrameWorks/KpeRouteHelper.xcframework"
        ),
        .binaryTarget(
            name: "KpePropertyWrapper",
            path: "Sources/FrameWorks/KpePropertyWrapper.xcframework"
        ),
        .binaryTarget(
            name: "KpeExtentionKit",
            path: "Sources/FrameWorks/KpeExtentionKit.xcframework"
        ),
        .binaryTarget(
            name: "KpeAdMobKit",
            path: "Sources/FrameWorks/KpeAdMobKit.xcframework"
        )
    ]
)
