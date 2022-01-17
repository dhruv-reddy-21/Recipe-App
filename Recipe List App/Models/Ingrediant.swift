//
//  Ingrediant.swift
//  Recipe List App
//
//  Created by Dhruv Reddy on 1/17/22.
//

import Foundation

class Ingrediant: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
