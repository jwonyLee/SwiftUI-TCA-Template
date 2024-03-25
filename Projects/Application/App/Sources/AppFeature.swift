import Foundation

import Root
import LoggedIn
import LoggedOut

import ComposableArchitecture

public struct AppFeature: Reducer {
    public struct State: Equatable {
        public var root = RootFeature.State()
    }
    
    public enum Action: Equatable {
        case root(RootFeature.Action)
    }
    
    public var body: some ReducerOf<Self> {
        Scope(state: \.root, action: /Action.root) {
            RootFeature()
        }
        
        Reduce { state, action in
            return .none
        }
    }
}
