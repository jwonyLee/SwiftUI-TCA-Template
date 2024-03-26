import SwiftUI

import LoggedOut

import ComposableArchitecture

public struct RootView: View {
    let store: StoreOf<RootFeature>
    
    public init(
        store: StoreOf<RootFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        let store = store.scope(state: \.loggedOut, action: \.loggedOut)
        LoggedOutView(store: store)
    }
}

#Preview {
    RootView(
        store: Store(initialState: RootFeature.State()) {
            RootFeature()
        }
    )
}
