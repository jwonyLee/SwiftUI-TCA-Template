import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: "LoggedInInterface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.LoggedInInterface",
        sources: "Interfaces/**",
        dependencies: [
        ],
        settings: .targetSettings
    ),
    .target(
        name: "LoggedIn",
        destinations: .iOS,
        product: .framework,
        bundleId: "tech.rieul.Feature.LoggedIn",
        sources: "Sources/**",
        dependencies: [
            .external(name: "ComposableArchitecture"),
        ],
        settings: .targetSettings
    ),
    .target(
        name: "LoggedInTesting",
        destinations: .iOS,
        product: .unitTests,
        bundleId: "tech.rieul.Feature.LoggedInTesting",
        sources: "Tests/**",
        dependencies: [
        ],
        settings: .targetSettings
    ),
]

let project = Project(
    name: "LoggedIn",
    settings: .projectSettings,
    targets: targets
)
