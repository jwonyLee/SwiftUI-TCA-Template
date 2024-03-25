import Foundation

import ComposableArchitecture

public struct LoggedOutFeature: Reducer {
    public struct State: Equatable {
    
        public init() {}
    }
    
    public enum Action: Equatable {
    }
    
    public init() {}
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            return .none
        }
    }
}
