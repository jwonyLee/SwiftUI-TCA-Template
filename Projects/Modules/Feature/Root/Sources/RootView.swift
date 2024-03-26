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
        switch store.case {
        case let .loggedIn(store):
            NavigationStack {
                LoggedInView(store: store)
            }
        case let .loggedOut(store):
            NavigationStack {
                LoggedOutView(store: store)
            }
        }
    }
}
