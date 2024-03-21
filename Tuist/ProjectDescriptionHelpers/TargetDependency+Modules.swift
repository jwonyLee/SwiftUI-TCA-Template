import ProjectDescription

// MARK: - Feature

extension TargetDependency {
    private static func feature(target: String, module: Feature) -> TargetDependency {
        .project(
            target: target,
            path: .relativeToRoot(module.rootPath)
        )
    }
    
    public static func feature(interface module: Feature) -> TargetDependency {
        .feature(target: module.name + "Interface", module: module)
    }
    
    public static func feature(implementation module: Feature) -> TargetDependency {
        .feature(target: module.name, module: module)
    }
    
    public static func feature(testing module: Feature) -> TargetDependency {
        .feature(target: module.name + "Testing", module: module)
    }
}
