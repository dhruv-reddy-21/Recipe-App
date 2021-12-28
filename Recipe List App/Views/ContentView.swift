//
//  ContentView.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "lasso.and.sparkles")
                }
            Text("Featured")
                .tabItem {
                    Image(systemName: "folder.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
