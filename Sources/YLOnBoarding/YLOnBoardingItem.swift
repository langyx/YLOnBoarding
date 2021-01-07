//
//  YLOnBoardingItem.swift
//  
//
//  Created by Yannis Lang on 06/01/2021.
//

import Foundation

public struct YLOnBoardingItem: Decodable {
    let icon: String
    let title: String
    let description: String
    
    public init(icon: String, title: String, description: String = "") {
        self.icon = icon
        self.title = title
        self.description = description
    }
}


extension YLOnBoardingItem: Identifiable {
    public var id: UUID { return UUID() }
}
