import ProjectDescription
import ProjectDescriptionHelpers

let bundleIDPrefix: String = "tech.rieul"
let deploymentTargets: DeploymentTargets = .iOS("17.0")

enum ProductName {
    static let name = "App"
    static var release: String {
        name
    }
    static var debug: String {
        name + "debug"
    }
    static var unitTest: String {
        name + "unitTest"
    }
}

let targets: [Target] = [
    .target(
        name: ProductName.release,
        destinations: .iOS,
        product: .app,
        productName: ProductName.release,
        bundleId: "\(bundleIDPrefix).\(ProductName.name)",
        deploymentTargets: deploymentTargets,
        infoPlist: .default,
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
        ]
    ),
    .target(
        name: ProductName.debug,
        destinations: .iOS,
        product: .app,
        productName: ProductName.release,
        bundleId: "\(bundleIDPrefix).\(ProductName.name).\(ProductName.debug)",
        deploymentTargets: deploymentTargets,
        infoPlist: .default,
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
        ]
    ),
    .target(
        name: ProductName.unitTest,
        destinations: .iOS,
        product: .unitTests,
        bundleId: "\(bundleIDPrefix).\(ProductName.name).\(ProductName.unitTest)",
        infoPlist: .default,
        sources: "Tests/**",
        dependencies: [
            .target(name: ProductName.debug)
        ]
    ),
]

let schemes: [Scheme] = [
    .scheme(
        name: ProductName.debug,
        shared: true,
        buildAction: .buildAction(
            targets: ["\(ProductName.debug)"]
        ),
        testAction: .targets(
            ["\(ProductName.unitTest)"],
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
        name: ProductName.release,
        shared: true,
        buildAction: .buildAction(
            targets: ["\(ProductName.release)"]
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
    name: "Application",
    organizationName: "rieul.tech",
    settings: .projectSettings,
    targets: targets,
    schemes: schemes
)
