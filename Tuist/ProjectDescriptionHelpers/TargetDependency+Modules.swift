import ProjectDescription

// MARK: - Feature

extension TargetDependency {
    private static func feature(target: String, moduleName: String) -> TargetDependency {
        .project(target: target, path: .relativeToRoot("Projects/Modules/Feature/" + moduleName))
    }

    public static func feature(interface moduleName: Feature) -> TargetDependency {
        .feature(target: moduleName.rawValue + "Interface", moduleName: moduleName.rawValue)
    }

    public static func feature(implementation moduleName: Feature) -> TargetDependency {
        .feature(target: moduleName.rawValue, moduleName: moduleName.rawValue)
    }

    public static func feature(testing moduleName: Feature) -> TargetDependency {
        .feature(target: moduleName.rawValue + "Testing", moduleName: moduleName.rawValue)
    }
}


// MARK: - Core

extension TargetDependency {
    private static func core(target: String, moduleName: String) -> TargetDependency {
        .project(target: target, path: .relativeToRoot("Projects/Modules/Core/" + moduleName))
    }

    public static func core(interface moduleName: Core) -> TargetDependency {
        .core(target: moduleName.rawValue + "Interface", moduleName: moduleName.rawValue)
    }

    public static func core(implementation moduleName: Core) -> TargetDependency {
        .core(target: moduleName.rawValue, moduleName: moduleName.rawValue)
    }

    public static func core(testing moduleName: Core) -> TargetDependency {
        .core(target: moduleName.rawValue + "Testing", moduleName: moduleName.rawValue)
    }
}
