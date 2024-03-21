import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: "LoggedOutInterface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.LoggedOutInterface",
        sources: "Interfaces/**",
        dependencies: [
        ],
        settings: .targetSettings
    ),
    .target(
        name: "LoggedOut",
        destinations: .iOS,
        product: .framework,
        bundleId: "tech.rieul.Feature.LoggedOut",
        sources: "Sources/**",
        dependencies: [
            .external(name: "ComposableArchitecture"),
        ],
        settings: .targetSettings
    ),
    .target(
        name: "LoggedOutTesting",
        destinations: .iOS,
        product: .unitTests,
        bundleId: "tech.rieul.Feature.LoggedOutTesting",
        sources: "Tests/**",
        dependencies: [
        ],
        settings: .targetSettings
    ),
]

let project = Project(
    name: "LoggedOut",
    settings: .projectSettings,
    targets: targets
)
