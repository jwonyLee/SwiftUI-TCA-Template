import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Application",
    projects: {
        var projects: [Path] = [
            Path("Projects/Application/**"),
        ]


        return projects
    }(),
    fileHeaderTemplate: ""
)
