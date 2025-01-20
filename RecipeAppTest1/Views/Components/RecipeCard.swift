
import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                //.frame(width:100, height: 100, alignment: .center)
            Text(recipe.name)
        }
        .frame(width: 100, height: 100, alignment: .top)
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
}

#Preview {
    RecipeCard(recipe: [Recipe]()[0])
}
