import Foundation

import Feature1
import Feature2

import ComposableArchitecture

@Reducer
public struct HomeFeature {
    public struct State: Equatable {
        public var feature1Tab: Feature1.State
        public var feature2Tab: Feature2.State
        
        public init(
            feature1Tab: Feature1.State = Feature1.State(),
            feature2Tab: Feature2.State = Feature2.State()
        ) {
            self.feature1Tab = feature1Tab
            self.feature2Tab = feature2Tab
        }
    }
    
    public enum Action {
        case feature1Tab(Feature1.Action)
        case feature2Tab(Feature2.Action)
    }
    
    public init() {}
    
    public var body: some ReducerOf<Self> {
        Scope(state: \.feature1Tab, action: \.feature1Tab) {
            Feature1Feature()
        }
        Scope(state: \.feature2Tab, action: \.feature2Tab) {
            Feature2Feature()
        }
        Reduce { state, action in
            return .none
        }
    }
}
