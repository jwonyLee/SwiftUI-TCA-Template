import SwiftUI

import ComposableArchitecture

public struct LoggedInView: View {
    let store: StoreOf<LoggedInFeature>
    
    public init(
        store: StoreOf<LoggedInFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        Text("LoggedIn")
    }
}

#Preview {
    LoggedInView(
        store: Store(initialState: LoggedInFeature.State()) {
            LoggedInFeature()
        }
    )
}
