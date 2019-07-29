//
//  OnboardingModel.swift
//  EliqModels
//
//  Created by MS on 2019-07-29.
//

import Foundation

public final class OnboardingModel:Codable{
    
    public var identifier:String
    public var text:String
    public var message:String
    public var isSkippable:Bool
    public var isSwipeable:Bool
    public var links:[OnboardingButtonModel]?
    
    private enum CodingKeys: String, CodingKey{
        case isSkippable = "is_skippable"
        case isSwipeable = "is_swipeable"
        case identifier, text, message, links
    }
}

public final class OnboardingButtonModel:Codable{
    var linkText:String
    var linkStyle:String
    var link:String
    
    private enum CodingKeys: String, CodingKey{
        case linkText = "link_text"
        case linkStyle = "link_style"
        case link
    }
}
