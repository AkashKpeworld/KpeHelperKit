// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KpeHelperKit",
    products: [
        .library(
            name: "KpeHelperKit",
            targets: ["KpeAPIHelper", "KpeRouteHelper", "KpePropertyWrapper", "KpeExtentionKit", "KpeAdMobKit", "KpeAdMobKitTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            .upToNextMajor(from: "11.13.0")
        )
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
        .target(
            name: "KpeAdMobKitTarget",
            dependencies: [
                .target(name: "KpeAdMobKit"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "KpeAdMobKitTarget"
        ),
        .binaryTarget(
            name: "KpeAdMobKit",
            path: "Sources/FrameWorks/KpeAdMobKit.xcframework"
        )
    ]
)
