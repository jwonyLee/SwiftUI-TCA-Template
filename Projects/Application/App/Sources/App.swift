import SwiftUI

import ComposableArchitecture

@main
struct MainApp: App {
    static let store = Store(initialState: AppFeature.State(root: .loggedIn(.init()))) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: MainApp.store)
        }
    }
}
