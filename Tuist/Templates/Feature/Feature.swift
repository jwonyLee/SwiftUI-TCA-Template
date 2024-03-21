import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let path = "Projects/Modules/Feature/\(nameAttribute)/"

let tamplete: Template = Template(
    description: "Feature Template",
    attributes: [
        nameAttribute
    ],
    items: [
        // Implementation
        .file(path: "\(path)Project.swift", templatePath: "Project.stencil"),
        .file(path: "\(path)Interfaces/\(nameAttribute).swift", templatePath: "Interface.stencil"),
        .file(path: "\(path)Sources/\(nameAttribute)Feature.swift", templatePath: "Reducer.stencil"),
        .file(path: "\(path)Sources/\(nameAttribute)View.swift", templatePath: "View.stencil"),
        // Tests
        .file(path: "\(path)Tests/\(nameAttribute)Tests.swift", templatePath: "Tests.stencil"),
    ]
)
