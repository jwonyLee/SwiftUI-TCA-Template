import ProjectDescription

let project = Project(
    name: "Login",
    targets: [
        .target(
            name: "Login",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "tech.rieul.Login",
            sources: "Sources/**",
            dependencies: [
                .external(name: "ComposableArchitecture"),
            ]
        ),
    ]
)
