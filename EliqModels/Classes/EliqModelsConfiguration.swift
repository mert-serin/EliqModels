//
//  EliqModelsConfiguration.swift
//  EliqModels
//
//  Created by MS on 2019-07-16.
//

import Foundation

open class EliqModelsConfiguration{
    
    static var shared = EliqModelsConfiguration()
    var brand:Brand!
    var jsonFileURL:URL?
}
