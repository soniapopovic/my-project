

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String{self.rawValue}
    case protein = "Protein"
    case vegetable = "Vegetable"
    case grain = "Grain"
    
}

struct Recipe: Identifiable, Decodable {
    var id: Int
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let cookingtime: Int
    let category: Category.RawValue
    //let isFaved: Bool
}

/*
extension Recipe {
    static let all: [Recipe] =
}
     = [
 Recipe(
 id: 1,
 name: "Hamburger",
 image: "hamburger",
 description: "cooked meat",
 ingredients: "ground beef, egg, onions",
 directions: "mix beef with egg and diced onions, cook beef",
 timetomake: 10,
 category: "Protein",
 isFaved: false
 ),
 Recipe(
 id: 2,
 name: "Salad",
 image: "salad",
 description: "raw vegetables",
 ingredients: "lettuce, tomato, cucumber",
 directions: "mix lettuce, tomato and cucumber in a bowl",
 timetomake: 5,
 category: "Vegetable",
 isFaved: false
 ),
 
 
 ]
 
 }
 */
