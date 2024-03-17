import Foundation

public protocol Module: RawRepresentable<String> {
    var name: String { get }
    var rootPath: String { get }
}

extension Module {
    public var name: String { "\(self.rawValue)" }
    public var path: String { "\(type(of: self))/\(name)" }
    public var rootPath: String { "Projects/Modules/\(path)" }
}

// MARK: - Core

public enum Core: String {
    case network = "Network"
}

extension Core: CaseIterable {}
extension Core: Module {}

// MARK: - Feature

public enum Feature: String {
    case feature1 = "Feature1"
    case feature2 = "Feature2"
    case home = "Home"
}

extension Feature: CaseIterable {}
extension Feature: Module {}
