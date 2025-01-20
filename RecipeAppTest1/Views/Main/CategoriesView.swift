
import SwiftUI

struct CategoriesView: View {
    var body: some View {
        
        NavigationStack{
            List {
                ForEach(Category.allCases){
                    category in
                    NavigationLink {
                        ScrollView {
                            
                            RecipeCategoryList(category: category.rawValue)
                            
                        }
                        .navigationTitle(category.rawValue)
                    } label: {
                        Text(category.rawValue)
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
  
}

#Preview {
    CategoriesView()
}
