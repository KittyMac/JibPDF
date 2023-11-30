// swift-tools-version: 5.6

import PackageDescription
import Foundation

let package = Package(
    name: "JibPDF",
    platforms: [
        .macOS(.v10_13), .iOS(.v11)
    ],
    products: [
        .library( name: "JibPDF", targets: ["JibPDF"]),
    ],
    dependencies: [
        .package(url: "https://github.com/KittyMac/Jib.git", from: "0.0.2"),
    ],
    targets: [
        .target(
            name: "JibPDF",
            dependencies: [
                "Jib"
            ]
        ),
        .testTarget(
            name: "JibPDFTests",
            dependencies: ["JibPDF"]
        )
    ]
)
