import SwiftUI

struct ErrorView: View {
    let message: String
    var retryAction: (() -> Void)?
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "exclamationmark.triangle")
            Text(message)
            
            if let retryAction {
                Button("Retry", action: retryAction)
            }
        }
    }
}
