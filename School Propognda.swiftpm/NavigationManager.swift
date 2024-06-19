import SwiftUI

class NavigationManager: ObservableObject {
    @Published var shouldNavigateToContentView = false
    @Published var shouldNavigateToQuizView = false
    
    func navigateToContentView() {
        shouldNavigateToContentView = true
    }
    
    func navigateToQuizView() {
        shouldNavigateToQuizView = true
    }
}
