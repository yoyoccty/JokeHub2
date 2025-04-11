import SwiftUI

struct JokeCardView: View {
    let joke: Joke
    @Binding var showingPunchline: Bool
    let isFavorite: Bool
    let onFavoriteToggle: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(joke.setup)
                .font(.title2)
            
            if showingPunchline {
                Text(joke.punchline)
                    .font(.title3)
                    .transition(.opacity)
            }
            
            HStack {
                Button(action: onFavoriteToggle) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                }
                
                Spacer()
                
                Button(showingPunchline ? "Hide Punchline" : "Show Punchline") {
                    withAnimation {
                        showingPunchline.toggle()
                    }
                }
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 3)
    }
}
