//
//  Configuration.swift
//  Configurations
//
//

import Foundation

enum Configuration : String {
    case staging
    case production
    case release
    
    static let current : Configuration = {
        guard let rawValue = Bundle.main.infoDictionary?["Configuration"] as? String else {
            fatalError()
        }
        
        guard let configuration = Configuration(rawValue: rawValue.lowercased()) else {
            fatalError("Invalid Configuration")
        }
        
        return configuration
    }()
    
    static var baseURL : URL {
        switch current {
        case .staging:
            return URL(string: "stagingURL")!
        case .production, .release:
            return URL(string: "productionURL")!
        }
    }
}
