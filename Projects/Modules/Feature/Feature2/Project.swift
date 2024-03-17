import ProjectDescription

let targets: [Target] = [
    .target(
        name: "Feature2Interface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature2Interface",
        sources: "Sources/**",
        dependencies: [
        ]
    ),
    .target(
        name: "Feature2",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature2",
        sources: "Sources/**",
        dependencies: [
            .external(name: "ComposableArchitecture"),
        ]
    ),
    .target(
        name: "Feature2Testing",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature2Testing",
        sources: "Tests/**",
        dependencies: [
        ]
    ),
]

let project = Project(
    name: "Feature2",
    targets: targets
)
