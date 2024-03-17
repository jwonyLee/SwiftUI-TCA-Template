import Foundation
import ProjectDescription

public enum ProjectConfiguration {
    public static let projectName: String = "Application"
    public static let organizationName: String = "rieul.tech"
    public static let bundleIDPrefix: String = "tech.rieul"
    public static let deploymentTargets: DeploymentTargets = .iOS("17.0")

    public enum Product: String {
        case release
        case debug
        case unitTest
        
        public static let _name: String = "App"
            
        public var name: String {
            switch self {
            case .release:
                return ProjectConfiguration.Product._name
            case .debug:
                return ProjectConfiguration.Product._name + "_debug"
            case .unitTest:
                return ProjectConfiguration.Product._name + "_unitTest"
            }
        }
        
        public var bundleID: String {
            "\(ProjectConfiguration.bundleIDPrefix).\(ProjectConfiguration.Product._name).\(self.rawValue)"
        }
    }
}
