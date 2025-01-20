
import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        NavigationStack{
            ScrollView {
                    RecipeFavoritesList()
                            
            }
            }
        .navigationTitle("My Favorites")
        .environmentObject(favorites)
            }
           
        }



#Preview {
    FavoritesView()
        .environmentObject(Favorites())
}
