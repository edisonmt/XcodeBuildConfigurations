//
//  Configuration+DarkSky.swift
//  Configurations
//
//

import Foundation

extension Configuration {
    enum DarkSky {
        static let apiKey : String = {
            switch Configuration.current {
            case .staging:
                return "stagingAPIKey"
            case .production:
                return "productionAPIKey"
            case .release:
                return "releaseAPIKey"
            }
        }()
    }
}
