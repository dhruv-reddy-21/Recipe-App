//
//  RecipeListView.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/27/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var vm = RecipeViewModel()
    
    var body: some View {
        
        NavigationView {
            List(vm.recipes){ r in
                
                NavigationLink(destination: {
                    RecipeDetailView(recipe: r)
                }, label: {
                    HStack{
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 100, alignment: .center)
                        Text(r.name)
                            .font(.system(size: 21, weight: .bold, design: .rounded))
                            .padding()
                    }
                })
            }
            .navigationTitle("Homecook")
        }
    }}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
