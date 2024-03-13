// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: Version(1, 8, 1)
        ),
        .package(url: "https://github.com/kean/Pulse", from: Version(4, 0, 5)),
    ]
)
