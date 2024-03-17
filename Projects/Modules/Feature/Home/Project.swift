import ProjectDescription

let project = Project(
    name: "Home",
    targets: [
        .target(
            name: "Home",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "tech.rieul.Home",
            sources: "Sources/**",
            dependencies: [
                .external(name: "ComposableArchitecture"),
            ]
        ),
    ]
)
