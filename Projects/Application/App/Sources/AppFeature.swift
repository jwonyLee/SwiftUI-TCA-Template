import Foundation

import Root

import ComposableArchitecture

@Reducer
public struct AppFeature {
    public struct State: Equatable {
        public var root: RootFeature.State
        
        public init(root: RootFeature.State) {
            self.root = root
        }
    }
    
    public enum Action {
        case root(RootFeature.Action)
    }
    
    public var body: some ReducerOf<Self> {
        Scope(state: \.root, action: \.root) {
            RootFeature.body
        }
        
        Reduce { state, action in
            return .none
        }
    }
}
