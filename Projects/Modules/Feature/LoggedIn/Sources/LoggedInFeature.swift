import Foundation

import ComposableArchitecture

public struct LoggedInFeature: Reducer {
    public struct State: Equatable {
    
        public init() {}
    }
    
    public enum Action {
    }
    
    public init() {}
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            return .none
        }
    }
}
