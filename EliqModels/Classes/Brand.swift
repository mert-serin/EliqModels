//
//  Brand.swift
//  EliqModels
//
//  Created by MS on 2019-07-16.
//

import Foundation
import UIKit

open class Brand{
    
    open var clientID:Int{
        get{
            return 0
        }
    }
    
    open var energyColor:UIColor{
        get{
            return UIColor.clear
        }
    }
    
    open var minColor:UIColor{
        get{
            return UIColor.clear
        }
    }
    
    open var maxColor:UIColor{
        get{
            return UIColor.clear
        }
    }
    
    open var averageColor:UIColor{
        get{
            return UIColor.clear
        }
    }
    
    open var brandIdentifier:String{
        get{
            return ""
        }
    }
    
    open var brandClientName:String{
        get{
            return ""
        }
    }
    
    open var brandClientID:Int{
        get{
            return clientID
        }
    }
    
    
    open var JSONFileName:String?{
        get{
            return nil
        }
    }
    
    open var signUpFlow:[FlowModel]!
    open var plainBackgroundColor:UIColor!{
        get{
            return UIColor.blue
        }
    }
    open var topBarLeftColor:UIColor!{
        get{
            return UIColor.black
        }
    }
    open var topBarRightColor:UIColor!{
        get{
            return UIColor.black
        }
    }
    open var gradientAngle:Double!{
        get{
            return 90.0
        }
    }
    
    public init() {}
    
    open func setSignUpFlow() -> [FlowModel]{
        if let url = EliqModelsConfiguration.shared.jsonFileURL {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.signUpFlow = try decoder.decode([FlowModel].self, from: data)
                return signUpFlow
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}
