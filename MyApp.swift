import SwiftUI

@main
struct MyApp: App {
    @State private var isShowingDisclaimerView = true
    
    var body: some Scene {
        WindowGroup {
            if isShowingDisclaimerView {
                DisclaimerView(isShowingDisclaimerView: $isShowingDisclaimerView)
                    .transition(.slide)
            }
            else {
                MainView()
                    .transition(.slide)
            }
        }
    }
}

