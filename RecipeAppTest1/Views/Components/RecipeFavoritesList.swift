

import SwiftUI

struct RecipeFavoritesList: View {
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
            ForEach(recipes){
                recipe in
                if favorites.contains(recipe) {
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    RecipeFavoritesList()
}
