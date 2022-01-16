//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 1/15/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @ObservedObject var model = RecipeViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
