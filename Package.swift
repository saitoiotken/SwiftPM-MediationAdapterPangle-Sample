// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FluctSDKMediationAdapterPangle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "FluctSDKMediationAdapterPangle",
            targets: ["FluctSDKMediationAdapterPangle"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "6.44.7"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            exact: "7.9.1-release.1"
        ),
    ],
    targets: [
        .target(
            name: "FluctSDKMediationAdapterPangle",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
