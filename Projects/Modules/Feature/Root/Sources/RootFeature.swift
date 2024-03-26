import Foundation

import LoggedOut

import ComposableArchitecture

@Reducer
public struct RootFeature {
    public struct State: Equatable {
        var loggedOut = LoggedOutFeature.State()
    
        public init() {}
    }
    
    public enum Action {
        case loggedOut(LoggedOutFeature.Action)
    }
    
    public init() {}
    
    public var body: some ReducerOf<Self> {
        Scope(state: \.loggedOut, action: \.loggedOut) {
            LoggedOutFeature()
        }
        
        Reduce { state, action in
            return .none
        }
    }
}
