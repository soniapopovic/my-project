

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                RecipeList()
            }
            .navigationTitle("All Recipes")
        }
    }
}

#Preview {
    HomeView()
}
