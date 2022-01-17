//  ContentView.swift
//  Recipe List App
//  Created by Dhruv Reddy on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {

        TabView {
            RecipeListView()
                .tabItem {
                    Image(systemName: "lasso.and.sparkles")
                }
            RecipeFeaturedView()
                .tabItem {
                    Image(systemName: "folder.fill")
                }
        
        }.accentColor(.black)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
