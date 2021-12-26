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
            
            HStack {
                
                Button {
                    ContentView()
                } label: {
                    Text("< Back")
                        .foregroundColor(.gray)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .padding(.leading)
                }
                Spacer()
                Text(recipe.name)
                    .foregroundColor(.orange)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                
                Spacer()
                Spacer()
            }
            
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .leading) {
                Text("Ingrediants")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                
                ForEach(recipe.ingredients, id: \.self) { item in
                    
                    Text("· " + item)
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
        .navigationBarHidden(true)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeViewModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
