import ProjectDescription

// MARK: - Core

extension TargetDependency {
    private static func core(target: String, module: Core) -> TargetDependency {
        .project(
            target: target,
            path: .relativeToRoot(module.rootPath)
        )
    }
    
    public static func core(interface module: Core) -> TargetDependency {
        .core(target: module.name + "Interface", module: module)
    }
    
    public static func core(implementation module: Core) -> TargetDependency {
        .core(target: module.name, module: module)
    }
    
    public static func core(testing module: Core) -> TargetDependency {
        .core(target: module.name + "Testing", module: module)
    }
}
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
