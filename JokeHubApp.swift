import SwiftUI
import SwiftData

@main
struct JokeHubApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
        .modelContainer(for: FavoriteJoke.self)
    }
}
