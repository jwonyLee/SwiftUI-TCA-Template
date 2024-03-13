import ProjectDescription

let project = Project(
    name: "Application",
    targets: [
        .target(
            name: "Application",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Application",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Application/Sources/**"],
            resources: ["Application/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ApplicationTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ApplicationTests",
            infoPlist: .default,
            sources: ["Application/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Application")]
        ),
    ]
)
