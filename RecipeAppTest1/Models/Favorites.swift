
import Foundation

class Favorites: ObservableObject {
    private var recipesInd: Set<Int>
    private let saveKey = "Favorites"
    
    init() {
        //load our saved data
        if let data = UserDefaults.standard.data(forKey: saveKey){
            if let decoded = try?  JSONDecoder().decode(Set<Int>.self, from: data){
                recipesInd = decoded
                return
            }
        }
        recipesInd = []
    }
    
    func contains(_ recipe: Recipe) -> Bool {
        recipesInd.contains(recipe.id)
    }
    
    func add(_ recipe: Recipe) {
        objectWillChange.send()
        recipesInd.insert(recipe.id)
        save()
    }
    
    func remove(_ recipe: Recipe) {
        objectWillChange.send()
        recipesInd.remove(recipe.id)
        save()
    }
    func save(){
        if let data = try? JSONEncoder().encode(recipesInd){
            UserDefaults.standard.set(data, forKey: saveKey)
        }
    }
}
