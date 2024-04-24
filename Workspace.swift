import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Application",
    projects: {
        var projects: [Path] = [
            Path("Projects/Application/**"),
        ]

        projects += Feature.allCases.map {
            Path(stringLiteral: $0.rootPath)
        }

        return projects
    }(),
    fileHeaderTemplate: "  ___COPYRIGHT___"
)
