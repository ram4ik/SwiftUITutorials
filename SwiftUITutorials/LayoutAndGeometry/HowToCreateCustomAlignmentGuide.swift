//
//  HowToCreateCustomAlignmentGuide.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountName.self)
}

struct HowToCreateCustomAlignmentGuide: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@SomeNickName")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                }

                Image(systemName: "person.cicle.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            VStack {
                Text("Full name:")
                Text("Some Full name")
                    .font(.largeTitle)
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                }
            }
        }
    }
}

struct HowToCreateCustomAlignmentGuide_Previews: PreviewProvider {
    static var previews: some View {
        HowToCreateCustomAlignmentGuide()
    }
}
