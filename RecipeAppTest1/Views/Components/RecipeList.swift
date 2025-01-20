
import SwiftUI

struct RecipeList: View {
    var body: some View {
        VStack {
            Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                .font(.headline)
                .fontWeight(.medium)
            Spacer()
        }
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
            ForEach(recipes){
                recipe in
                NavigationLink(destination: RecipeView(recipe: recipe)){
                    RecipeCard(recipe: recipe)
                }
                
            }
        }
        
        .padding(.horizontal)
    }
}

#Preview {
    ScrollView {
        RecipeList()
    }
    
}
