//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/23/21.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    @State var selectedServingSize = 2
    var body: some View {
        ScrollView {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Text("Select your serving size")
                        .padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Picker("", selection: $selectedServingSize){
                        Text("\(2)").tag(2)
                        Text("\(4)").tag(4)
                        Text("\(6)").tag(6)
                        Text("\(8)").tag(8)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .center)
                    Spacer()
                }
                Text("Ingrediants")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                
                ForEach(recipe.ingredients) { item in
                    Text("• " + RecipeViewModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: selectedServingSize) + " " + item.name.lowercased())
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
                Spacer()
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
