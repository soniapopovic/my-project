
import SwiftUI

struct ContentView: View {
    @State var recipes = [Recipe]()
    @StateObject var favorites = Favorites()
    
    var body: some View {
        TabBar()
            .environmentObject(favorites)
    }
}

#Preview {
    ContentView()
}
