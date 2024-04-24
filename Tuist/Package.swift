// swift-tools-version:5.9

import PackageDescription

#if TUIST
import ProjectDescription

let packageSettings = PackageSettings(
    productTypes: [
        "ComposableArchitecture": .framework
    ]
)
#endif

let package = Package(
    name: "PackageName",
    platforms: [.iOS(.v17)],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            from: Version(1, 9, 3)
        ),
        .package(url: "https://github.com/kean/Pulse", from: Version(4, 0, 5)),
    ]
)
