import SwiftUI

struct CategoriesView: View {
    let categories = ["Programming", "General", "Knock-Knock"]
    
    var body: some View {
        NavigationStack {
            List(categories, id: \.self) { category in
                NavigationLink(value: category) {
                    Text(category)
                }
            }
            .navigationTitle("Categories")
            .navigationDestination(for: String.self) { category in
                JokeListView(category: category)
            }
        }
    }
}
