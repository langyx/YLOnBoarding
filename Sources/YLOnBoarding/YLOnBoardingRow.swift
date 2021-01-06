//
//  YLOnBoardingRow.swift
//  
//
//  Created by Yannis Lang on 06/01/2021.
//

import SwiftUI

struct YLOnBoardingRow: View {
    
    let item: YLOnBoardingItem
    let style: YLOnBoardingStyle
    
    private var image: Image {
        if let _ = UIImage(named: item.icon) {
            return Image(item.icon)
        }else{
            return Image(systemName: item.icon)
        }
    }
    
    var body: some View {
        HStack(alignment: .center) {
            image
                .font(.largeTitle)
                .foregroundColor(style.accentColor)
                .frame(maxWidth: 60, alignment: .center)
            VStack(alignment: .leading, spacing: 3) {
                Text(item.title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(style.mainColor)
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(style.mainColor)
            }
            Spacer()
        }
    }
}

struct YLOnBoardingRow_Previews: PreviewProvider {
    static var previews: some View {
        YLOnBoardingRow(item: YLOnBoardingItem(icon: "bag.fill.badge.plus", title: "New content", description: "Discover new content in this update"), style: YLOnBoardingStyle())
    }
}
