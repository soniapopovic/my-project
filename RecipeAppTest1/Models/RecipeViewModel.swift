
import Foundation

/*
extension FavoritesView {
    final class RecipeViewModel: ObservableObject {
        @Published var recipes = [Recipe]()
        @Published var savedRecipes: Set<Int> = []
        var filteredRecipes: [Recipe] {
                return recipes.filter {savedRecipes.contains($0.id)}
                   }
        
        private var db = Database()
        init() {
            self.savedRecipes = db.load()
            self.recipes = [Recipe]()
        }
        
        func contains(_ recipe: Recipe) -> Bool {
            savedRecipes.contains(recipe.id)
        }
        
    }
}
*/
/*
extension RecipeView {
    
    final class RecipeViewModel: ObservableObject {
       @Published var recipes = [Recipe]()
        @Published var showingFavs = false
        @Published var savedRecipes: Set<Int> = []
        var filteredRecipes: [Recipe] {
            if showingFavs {
                return recipes.filter {savedRecipes.contains($0.id)}
            }
            else {
                return recipes
            }
        }
        private var db = Database()
        init() {
            self.savedRecipes = db.load()
            self.recipes = [Recipe]()
        }
        
        func sortFavs() {
                showingFavs.toggle()
        }
        
        func contains(_ recipe: Recipe) -> Bool {
            savedRecipes.contains(recipe.id)
        }
        
        func toggleFav(recipe: Recipe){
            if contains(recipe){
                savedRecipes.remove(recipe.id)
            }
            else {
                savedRecipes.insert(recipe.id)
            }
            db.save(recipes: savedRecipes)
        }
    }
}
*/
