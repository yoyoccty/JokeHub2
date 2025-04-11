import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            RandomJokeView()
                .tabItem {
                    Label("Random", systemImage: "shuffle")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "list.bullet")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
        }
    }
}
