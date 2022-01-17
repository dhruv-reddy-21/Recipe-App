//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/23/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .leading) {
                Text("Ingrediants")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                
                ForEach(recipe.ingredients) { item in
                    
                    Text("· " + item.name)
                        .padding(.vertical, 1)
                        .padding(.horizontal)
                }
                
                Divider()
                
                Text("Directions")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                ForEach(recipe.directions, id: \.self) { item in
                    Text("·  \(item)")
                        .padding(.horizontal)
                        .padding(.vertical, 2)
                }
            }
            
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeViewModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
