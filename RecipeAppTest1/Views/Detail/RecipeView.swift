
import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var favorites: Favorites
   
    var recipe: Recipe
    var body: some View {
        ScrollView{
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            VStack(spacing: 30){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                HStack{
                    Text("Favorite:")
                        .padding()
                    Image(systemName: favorites.contains(recipe) ? "heart.fill": "heart")
                        .foregroundColor(.red)
                        .onTapGesture {
                            if favorites.contains(recipe){
                                favorites.remove(recipe)
                            } else {
                                favorites.add(recipe)
                            }
                        }
    
                }
                VStack(alignment: .leading, spacing:30){
                    Text(recipe.description)
                    
                    VStack(alignment: .leading) {
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipe.ingredients)
                    }
                    VStack(alignment: .leading){
                        Text("Directions")
                            .font(.headline)
                        Text(recipe.directions)
                    }
                }
            }
            
        }
    }
}

#Preview {
    RecipeView(recipe: [Recipe]()[0])
}
