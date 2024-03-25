import SwiftUI

import Root

import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>
    
    var body: some View {
        RootView(
            store: store.scope(
                state: \.root,
                action: AppFeature.Action.root
            )
        )
    }
}

#Preview {
    AppView(
        store: Store(initialState: AppFeature.State()) {
            AppFeature()
        }
    )
}

