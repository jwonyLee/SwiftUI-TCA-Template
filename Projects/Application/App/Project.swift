import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: ProjectConfiguration.Product.release.name,
        destinations: .iOS,
        product: .app,
        productName: ProjectConfiguration.Product.release.name,
        bundleId: ProjectConfiguration.Product.release.bundleID,
        deploymentTargets: ProjectConfiguration.deploymentTargets,
        infoPlist: .default,
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
        ]
    ),
    .target(
        name: ProjectConfiguration.Product.debug.name,
        destinations: .iOS,
        product: .app,
        productName: ProjectConfiguration.Product.debug.name,
        bundleId: ProjectConfiguration.Product.debug.bundleID,
        deploymentTargets: ProjectConfiguration.deploymentTargets,
        infoPlist: .default,
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
        ]
    ),
    .target(
        name: ProjectConfiguration.Product.unitTest.name,
        destinations: .iOS,
        product: .unitTests,
        bundleId: ProjectConfiguration.Product.unitTest.bundleID,
        infoPlist: .default,
        sources: "Tests/**",
        dependencies: [
            .target(name: ProjectConfiguration.Product.debug.name)
        ]
    ),
]

let schemes: [Scheme] = [
    .scheme(
        name: ProjectConfiguration.Product.debug.name,
        shared: true,
        buildAction: .buildAction(
            targets: ["\(ProjectConfiguration.Product.debug.name)"]
        ),
        testAction: .targets(
            ["\(ProjectConfiguration.Product.unitTest.name)"],
            configuration: .debug,
            options: .options(
                coverage: true
            )
        ),
        runAction: .runAction(
            configuration: .debug
        ),
        archiveAction: .archiveAction(
            configuration: .debug
        ),
        profileAction: .profileAction(
            configuration: .debug
        ),
        analyzeAction: .analyzeAction(
            configuration: .debug
        )
    ),
    .scheme(
        name: ProjectConfiguration.Product.release.name,
        shared: true,
        buildAction: .buildAction(
            targets: ["\(ProjectConfiguration.Product.release.name)"]
        ),
        testAction: nil,
        runAction: .runAction(
            configuration: .release
        ),
        archiveAction: .archiveAction(
            configuration: .release
        ),
        profileAction: .profileAction(
            configuration: .release
        ),
        analyzeAction: .analyzeAction(
            configuration: .release
        )
    ),
]

// MARK: - Project

let project = Project(
    name: ProjectConfiguration.projectName,
    organizationName: ProjectConfiguration.organizationName,
    settings: .projectSettings,
    targets: targets,
    schemes: schemes
)
