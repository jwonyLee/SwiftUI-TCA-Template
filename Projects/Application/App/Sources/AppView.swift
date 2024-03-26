import SwiftUI

import Root

import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>
    
    var body: some View {
        RootView(
            store: store.scope(
                state: \.root,
                action: \.root
            )
        )
    }
}

#Preview {
    AppView(
        store: Store(
            initialState: AppFeature.State(root: .loggedIn(.init()))
        ) {
            AppFeature()
        }
    )
}

