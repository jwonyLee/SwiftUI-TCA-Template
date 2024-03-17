import SwiftUI

import ComposableArchitecture

public struct HomeView: View {
    let store: StoreOf<HomeFeature>
    
    public init(
        store: StoreOf<HomeFeature>
    ) {
        self.store = store
    }

    public var body: some View {
    }
}

#Preview {
    HomeView(
        store: Store(initialState: HomeFeature.State()) {
            HomeFeature()
        }
    )
}
