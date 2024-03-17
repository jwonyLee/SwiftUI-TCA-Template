import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Application",
    projects: {
        var projects: [Path] = [
            Path("Projects/Application/**"),
        ]

        projects += Core.allCases.map {
            Path(stringLiteral: $0.rootPath)
        }
        projects += Feature.allCases.map {
            Path(stringLiteral: $0.rootPath)
        }

        return projects
    }()
)
