import Foundation

import ComposableArchitecture

@Reducer
public struct LoggedInFeature {
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
