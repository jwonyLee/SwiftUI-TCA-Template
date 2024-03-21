import SwiftUI

import ComposableArchitecture

public struct LoggedOutView: View {
    let store: StoreOf<LoggedOutFeature>
    
    public init(
        store: StoreOf<LoggedOutFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        Text("LoggedOut")
    }
}

#Preview {
    LoggedOutView(
        store: Store(initialState: LoggedOutFeature.State()) {
            LoggedOutFeature()
        }
    )
}
