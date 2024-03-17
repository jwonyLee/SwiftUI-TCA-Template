import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let path = "Projects/Modules/Core/\(nameAttribute)/"

let tamplete: Template = Template(
    description: "Core Template",
    attributes: [
        nameAttribute
    ],
    items: [
        // Implementation
        .file(path: "\(path)Project.swift", templatePath: "Project.stencil"),
        .file(path: "\(path)Sources/\(nameAttribute)Interface.swift", templatePath: "Interface.stencil"),
        .file(path: "\(path)Sources/\(nameAttribute).swift", templatePath: "Implementation.stencil"),
        // Tests
        .file(path: "\(path)Tests/\(nameAttribute)Tests.swift", templatePath: "Tests.stencil"),
    ]
)