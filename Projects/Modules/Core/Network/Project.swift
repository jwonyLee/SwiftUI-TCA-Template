import ProjectDescription

let project = Project(
    name: "Network",
    targets: [
        .target(
            name: "Network",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "tech.rieul.Network",
            sources: "Sources/**",
            dependencies: [
                .external(name: "ComposableArchitecture"),
            ]
        ),
    ]
)
