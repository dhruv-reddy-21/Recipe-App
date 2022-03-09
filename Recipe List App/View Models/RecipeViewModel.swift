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
    
    static func getPortion(ingredient:Ingrediant, recipeServings:Int, targetServings:Int) -> String {
        
        var portion = ""
        var numerator = ingredient.num ?? 1
        var denominator = ingredient.denom ?? 1
        
        if ingredient.num != nil {
            denominator = denominator * recipeServings
            numerator *= targetServings
        }
        
        return String(targetServings)
    }
}
