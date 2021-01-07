//
//  YLOnBoardingStyle.swift
//  
//
//  Created by Yannis Lang on 06/01/2021.
//

import SwiftUI

public struct YLOnBoardingStyle {
    var mainColor: Color
    var accentColor: Color

    public init(mainColor: Color = .black, accentColor: Color = .blue) {
        self.mainColor = mainColor
        self.accentColor = accentColor
    }
}
