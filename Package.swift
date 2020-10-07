// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDWebImageSVGKitPlugin",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SDWebImageSVGKitPlugin",
            targets: ["SDWebImageSVGKitPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMinor(from: "5.9.0")),
        .package(url: "https://github.com/fjtrujy/SVGKit.git", .branch("spmV9"))
    ],
    targets: [
        .target(
            name: "SDWebImageSVGKitPlugin",
            dependencies: ["SDWebImage", "SVGKit"],
            path: ".",
            sources: ["SDWebImageSVGKitPlugin/Classes"],
            publicHeadersPath: "SDWebImageSVGKitPlugin/Classes"
        )
    ]
)