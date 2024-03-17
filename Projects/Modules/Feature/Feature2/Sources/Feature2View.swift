import SwiftUI

import ComposableArchitecture

public struct Feature2View: View {
    let store: StoreOf<Feature2Feature>
    
    public init(
        store: StoreOf<Feature2Feature>
    ) {
        self.store = store
    }

    public var body: some View {
    }
}

#Preview {
    Feature2View(
        store: Store(initialState: Feature2Feature.State()) {
            Feature2Feature()
        }
    )
}
