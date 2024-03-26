import Foundation

import LoggedOut
import LoggedIn

import ComposableArchitecture

@Reducer(state: .equatable)
public enum RootFeature {
    case loggedIn(LoggedInFeature)
    case loggedOut(LoggedOutFeature)
    
    public static var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .loggedIn:
                return .none
                
            case .loggedOut:
                return .none
            }
        }
        .ifCaseLet(\.loggedIn, action: \.loggedIn) {
            LoggedInFeature()
        }
        .ifCaseLet(\.loggedOut, action: \.loggedOut) {
            LoggedOutFeature()
        }
    }
}
