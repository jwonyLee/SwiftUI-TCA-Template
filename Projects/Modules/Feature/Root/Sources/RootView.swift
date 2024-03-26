import SwiftUI

import ComposableArchitecture

public struct RootView: View {
    let store: StoreOf<RootFeature>
    
    public init(
        store: StoreOf<RootFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        Text("Root")
    }
}

#Preview {
    RootView(
        store: Store(initialState: RootFeature.State()) {
            RootFeature()
        }
    )
}
