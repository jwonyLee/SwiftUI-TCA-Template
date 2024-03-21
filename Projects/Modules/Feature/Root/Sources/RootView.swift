import SwiftUI

import LoggedOut
import LoggedIn

import ComposableArchitecture

public struct RootView: View {
    let store: StoreOf<RootFeature>
    
    public init(
        store: StoreOf<RootFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        switch store.state {
        case .loggedIn:
            if let store = store.scope(state: \.loggedIn, action: \.loggedIn) {
                LoggedInView(store: store)
            }
        case .loggedOut:
            if let store = store.scope(state: \.loggedOut, action: \.loggedOut) {
                LoggedOutView(store: store)
            }
        }
    }
}

#Preview {
    RootView(
        store: Store(
            initialState: RootFeature.State.loggedIn(LoggedInFeature.State())
        ) {
            RootFeature()
        }
    )
}
