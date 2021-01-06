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
    var description: String = ""
}


extension YLOnBoardingItem: Identifiable {
    public var id: UUID { return UUID() }
}
