//
//  DataService.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 12/23/21.
//

import Foundation

class DataService {
    
    static func getData() -> [Recipe] {
        

        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")

        guard pathString != nil else {
            
            return [Recipe]()
        }
        // Create url object
        let url = URL(fileURLWithPath: pathString!)

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                var recipeData = [Recipe]()
                recipeData = try decoder.decode([Recipe].self, from: data)
                
                
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                return recipeData
            }
            catch {
                print (error)
                print("not working")
            }
        }
        catch {
           print(error)
        }
        
        return [Recipe]()
    }
}
