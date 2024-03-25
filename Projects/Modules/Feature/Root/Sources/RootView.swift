import SwiftUI

import LoggedOut
import LoggedIn

import ComposableArchitecture

public struct RootView: View {
    let store: StoreOf<RootFeature>
    
    public init(store: StoreOf<RootFeature>) {
        self.store = store
    }
    
    public var body: some View {
        switch store.state {
        case .loggedIn:
            if let store = store.scope(
                state: \.loggedIn,
                action: RootFeature.Action.loggedIn
            ) {
                NavigationStack {
                    LoggedInView(store: store)
                }
            }
        case .loggedOut:
            if let store = store.scope(
                state: \.loggedOut,
                action: RootFeature.Action.loggedOut
            ) {
                NavigationStack {
                    LoggedOutView(store: store)
                }
            }
        }
//        switch store.state {
//        case let .loggedIn(store):
//            NavigationStack {
//                LoggedInView(store: store)
//            }
//        case let .loggedOut(store):
//            NavigationStack {
//                LoggedOutView(store: store)
//            }
//        }
        
    }
}
