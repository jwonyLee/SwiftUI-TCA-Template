import ProjectDescription
import ProjectDescriptionHelpers

let dependencies: [TargetDependency] = [
    .external(name: "ComposableArchitecture"),
    .project(target: "LoggedIn", path: .relativeToRoot("Projects/Modules/Feature/LoggedIn")),
    .project(target: "LoggedOut", path: .relativeToRoot("Projects/Modules/Feature/LoggedOut")),
]

let targets: [Target] = [
    .target(
        name: "RootInterface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.RootInterface",
        sources: "Interfaces/**",
        dependencies: [
        ],
        settings: .targetSettings
    ),
    .target(
        name: "Root",
        destinations: .iOS,
        product: .framework,
        bundleId: "tech.rieul.Feature.Root",
        sources: "Sources/**",
        dependencies: dependencies,
        settings: .targetSettings
    ),
    .target(
        name: "RootTesting",
        destinations: .iOS,
        product: .unitTests,
        bundleId: "tech.rieul.Feature.RootTesting",
        sources: "Tests/**",
        dependencies: [
            .target(name: "Root")
        ],
        settings: .targetSettings
    ),
]

let project = Project(
    name: "Root",
    settings: .projectSettings,
    targets: targets
)
