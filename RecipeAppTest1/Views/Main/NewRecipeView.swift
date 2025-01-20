
import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationStack{
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
    }
}

#Preview {
    NewRecipeView()
}
