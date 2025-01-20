

import Foundation

final class Database {
    private let FAV_KEY = "fav_key"
    
    func save(recipesInd: Set<Int>){
        let array = Array(recipesInd)
        UserDefaults.standard.set(array, forKey: FAV_KEY)
    }
    
    func load() -> Set<Int> {
        let array = UserDefaults.standard.array(forKey: FAV_KEY) as? [Int] ?? [Int]()
        return Set(array)
    }
}
