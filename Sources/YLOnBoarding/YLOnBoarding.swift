//
//  YLOnBoarding.swift
//  
//
//  Created by Yannis Lang on 06/01/2021.
//

import SwiftUI

public struct YLOnBoarding: View {
    
    let title: String
    let style: YLOnBoardingStyle
    let items: [YLOnBoardingItem]
    
    public init(title: String, style: YLOnBoardingStyle = YLOnBoardingStyle(), items: [YLOnBoardingItem]) {
        self.title = title
        self.style = style
        self.items = items
    }
    
    public var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(style.mainColor)
                .fontWeight(.bold)
                .padding(.horizontal, 40)
                .padding(.vertical, 15)
                .multilineTextAlignment(.center)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(items) {
                        item in
                        YLOnBoardingRow(item: item, style: style)
                    }
                }
            }
        }
        .padding(.horizontal, 25)
    }
}

struct YLOnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        let items = [
            YLOnBoardingItem(icon: "bag.fill.badge.plus", title: "New content", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            YLOnBoardingItem(icon: "bolt.fill", title: "New content", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            YLOnBoardingItem(icon: "heart.fill", title: "New content", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        ]
        return YLOnBoarding(title: "Discover new features", style: YLOnBoardingStyle(mainColor: .black, accentColor: .blue), items: items)
    }
}
