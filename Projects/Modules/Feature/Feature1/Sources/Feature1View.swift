import SwiftUI

import ComposableArchitecture

public struct Feature1View: View {
    let store: StoreOf<Feature1Feature>
    
    public init(
        store: StoreOf<Feature1Feature>
    ) {
        self.store = store
    }

    public var body: some View {
    }
}

#Preview {
    Feature1View(
        store: Store(initialState: Feature1Feature.State()) {
            Feature1Feature()
        }
    )
}
