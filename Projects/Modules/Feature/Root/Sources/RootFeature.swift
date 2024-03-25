import Foundation

import LoggedIn
import LoggedOut

import ComposableArchitecture

public struct RootFeature: Reducer {
    @ObservableState
    public enum State: Equatable {
        case loggedIn(LoggedInFeature.State)
        case loggedOut(LoggedOutFeature.State)
        
        public init() {
            self = .loggedOut(LoggedOutFeature.State())
        }
    }
    
    public enum Action: Equatable {
        case loggedIn(LoggedInFeature.Action)
        case loggedOut(LoggedOutFeature.Action)
    }
    
    public init() {
    }
    
    public static var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .loggedIn:
                return .none

            case .loggedOut:
                return .none
            }
        }
        .ifCaseLet(/State.loggedIn, action: /Action.loggedIn) {
            LoggedInFeature()
        }
        .ifCaseLet(/State.loggedOut, action: /Action.loggedOut) {
            LoggedOutFeature()
        }
    }
    
    public func reduce(
        into state: inout State,
        action: Action
    ) -> ComposableArchitecture.Effect<Action> {
        switch action {
        case .loggedIn:
            return .none
        case .loggedOut:
            return .none
        }
    }
}
