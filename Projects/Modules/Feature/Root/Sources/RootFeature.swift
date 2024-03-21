import Foundation

import LoggedIn
import LoggedOut

import ComposableArchitecture

public struct RootFeature: Reducer {
    @ObservableState
    public enum State: Equatable {
        case loggedIn(LoggedInFeature.State)
        case loggedOut(LoggedOutFeature.State)
        
//        public var loggedIn: LoggedInFeature.State
//        public var loggedOut: LoggedOutFeature.State
//        
//        public init(
//            loggedIn: LoggedInFeature.State = .init(),
//            loggedOut: LoggedOutFeature.State = .init()
//        ) {
//            self.loggedIn = loggedIn
//            self.loggedOut = loggedOut
//        }
    }
    
    public enum Action {
        case loggedIn(LoggedInFeature.Action)
        case loggedOut(LoggedOutFeature.Action)
    }
    
    public init() {}
    
    public var body: some ReducerOf<Self> {
        Scope(state: \.loggedIn, action: /Action.loggedIn) {
            LoggedInFeature()
        }
        Scope(state: \.loggedOut, action: /Action.loggedOut) {
            LoggedOutFeature()
        }
        Reduce { state, action in
            return .none
        }
    }
}
