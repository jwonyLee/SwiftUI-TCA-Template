import ProjectDescription

let targets: [Target] = [
    .target(
        name: "Feature1Interface",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature1Interface",
        sources: "Sources/**",
        dependencies: [
        ]
    ),
    .target(
        name: "Feature1",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature1",
        sources: "Sources/**",
        dependencies: [
            .external(name: "ComposableArchitecture"),
        ]
    ),
    .target(
        name: "Feature1Testing",
        destinations: .iOS,
        product: .staticFramework,
        bundleId: "tech.rieul.Feature.Feature1Testing",
        sources: "Tests/**",
        dependencies: [
        ]
    ),
]

let project = Project(
    name: "Feature1",
    targets: targets
)
