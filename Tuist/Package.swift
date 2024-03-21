// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "PackageName",
    platforms: [.iOS(.v17), .macOS(.v14)],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            from: Version(1, 9, 2)
        ),
        .package(url: "https://github.com/kean/Pulse", from: Version(4, 0, 5)),
    ]
)
