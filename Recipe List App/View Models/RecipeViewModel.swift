//
//  RecipeViewModel.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/23/21.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    @Published var recipes:[Recipe] = [Recipe]()
    
    init(){
        self.recipes = DataService.getData()
    }
}
