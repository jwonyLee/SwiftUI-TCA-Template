import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: "HomeInterface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.HomeInterface",
        sources: "Sources/**",
        dependencies: [
        ]
    ),
    .target(
        name: "Home",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Home",
        sources: "Sources/**",
        dependencies: [
            .external(name: "ComposableArchitecture"),
            .feature(implementation: .feature1),
            .feature(implementation: .feature2),
        ]
    ),
    .target(
        name: "HomeTesting",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.HomeTesting",
        sources: "Tests/**",
        dependencies: [
        ]
    ),
]

let project = Project(
    name: "Home",
    targets: targets
)