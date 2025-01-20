

import SwiftUI

struct RecipeCategoryList: View {
    var category: Category.RawValue
    var filteredrecipes: [Recipe] {
        return recipes.filter{$0.category == category}
    }
    
    var body: some View {
        VStack {
            Text("\(filteredrecipes.count) \(filteredrecipes.count > 1 ? "recipes" : "recipe")")
                .font(.headline)
                .fontWeight(.medium)
            Spacer()
        }
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
            ForEach(filteredrecipes){
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
    RecipeCategoryList(category: "Protein")
}
