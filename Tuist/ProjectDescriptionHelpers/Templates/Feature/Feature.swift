import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let path = "Projects/Feature/\(nameAttribute)/Sources/"

let tamplete: Template = Template(
    description: "Feature Template",
    attributes: [
        nameAttribute
    ],
    items: [
        .file(path: "\(path)\(nameAttribute)View.swift", templatePath: "View.stencil"),
        .file(path: "\(path)\(nameAttribute)Feature.swift", templatePath: "Reducer.stencil")
    ]
)