import Foundation

public protocol Module: RawRepresentable<String> {
    var name: String { get }
    var rootPath: String { get }
}

extension Module {
    public var name: String { "\(self.rawValue)\(type(of: self))" }
    public var path: String { "\(type(of: self))/\(name)" }
    public var rootPath: String { "Projects/Modules/\(path)" }
}

// MARK: - Feature


public enum Feature: String {
    case home = "Home"
}

extension Feature: CaseIterable {}
extension Feature: Module {}

// MARK: - Core

public enum Core: String {
    case network = "Network"
}

extension Core: CaseIterable {}
extension Core: Module {}
