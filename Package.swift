// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AEPMobileServices",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "AEPMobileServices",
            targets: ["AEPMobileServicesWrapper"])
    ],
    dependencies: [
        .package(
            name: "AEPCore",
            url: "https://github.com/adobe/aepsdk-core-ios.git",
            from: "3.0.0"
        )
    ],
    targets: [        
        .target(
            name: "AEPMobileServicesWrapper",
            dependencies: [
            "AEPMobileServices",
            .product(name: "AEPCore", package: "AEPCore"),
            ],
            path: "AEPMobileServicesWrapper"
         ),
        .binaryTarget(
            name: "AEPMobileServices",            
            url: "https://github.com/Adobe-Marketing-Cloud/acp-sdks/releases/download/v3.0.3-AEPMobileServices/AEPMobileServices.xcframework.zip",
            checksum: "36ce8dd632c416c01cf5026eb47a6505bc52e6116f974b7fe644fe5c970a308b"
        )
    ]
)
