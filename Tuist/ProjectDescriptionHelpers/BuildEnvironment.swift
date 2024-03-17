import Foundation
import ProjectDescription

public enum BuildEnvironment: String, CaseIterable {
    case debug
    case release

    public var name: String { rawValue.firstUppercased }

    public var configurationName: ConfigurationName {
        ConfigurationName(stringLiteral: name)
    }

    public var projectConfigPath: Path {
        .relativeToRoot("Environment/\(name).xcconfig")
    }

    public var targetConfigPath: Path {
        .relativeToRoot("Environment/Target.\(name).xcconfig")
    }

    public var targetConfiguration: Configuration {
        switch self {
        case .debug:
            return .debug(name: configurationName, xcconfig: targetConfigPath)
        case .release:
            return .release(name: configurationName, xcconfig: targetConfigPath)
        }
    }

    public var projectConfiguration: Configuration {
        switch self {
        case .debug:
            return .debug(name: configurationName, xcconfig: projectConfigPath)
        case .release:
            return .release(name: configurationName, xcconfig: projectConfigPath)
        }
    }
}

extension StringProtocol {
    public var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
}
