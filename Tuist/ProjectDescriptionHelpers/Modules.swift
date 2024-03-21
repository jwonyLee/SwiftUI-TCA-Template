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

// MARK: - Feature

public enum Feature: String {
    case loggedIn = "LoggedIn"
    case loggedOut = "LoggedOut"
    case root = "Root"
}

extension Feature: CaseIterable {}
extension Feature: Module {}
