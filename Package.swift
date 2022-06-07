// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KTVHTTPCache",
    products: [
        .library(
            name: "KTVHTTPCache",
            targets: ["KTVHTTPCache"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zhengyi21st/KTVCocoaHTTPServer", .upToNextMajor(from: "1.0.1"))
    ],
    targets: [
        .target(
            name: "KTVHTTPCache",
            dependencies: ["KTVCocoaHTTPServer"],
            path: "KTVHTTPCache",
            cSettings: [
                .headerSearchPath("Classes/KTVHCCommon"),
                .headerSearchPath("Classes/KTVHCDataStorage"),
                .headerSearchPath("Classes/KTVHCDownload"),
                .headerSearchPath("Classes/KTVHCHTTPServer"),
                .headerSearchPath("Classes/KTVHCTools")
            ]
        )
    ]
)

