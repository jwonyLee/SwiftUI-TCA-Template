import SwiftUI

import Feature1
import Feature2

import ComposableArchitecture

public struct HomeView: View {
    let store: StoreOf<HomeFeature>
    
    public init(
        store: StoreOf<HomeFeature>
    ) {
        self.store = store
    }

    public var body: some View {
        TabView {
            Feature1View(store: store.scope(state: \.feature1Tab, action: \.feature1Tab))
                .tabItem {
                    Label {
                        Text("Feature1")
                    } icon: {
                        Image(systemName: "gamecontroller")
                    }
                }
            
            Feature2View(store: store.scope(state: \.feature2Tab, action: \.feature2Tab))
                .tabItem {
                    Label {
                        Text("Feature2")
                    } icon: {
                        Image(systemName: "arcade.stick.console")
                    }
                }
        }
    }
}

#Preview {
    HomeView(
        store: Store(initialState: HomeFeature.State()) {
            HomeFeature()
        }
    )
}
