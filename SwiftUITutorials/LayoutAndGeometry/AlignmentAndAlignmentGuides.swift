//
//  AlignmentAndAlignmentGuides.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct AlignmentAndAlignmentGuides: View {
    var body: some View {
        VStack {
            Text("Live long and prosper")
                .frame(width: 300, height: 300, alignment: .topLeading)
            HStack(alignment: .lastTextBaseline) {
                Text("Live")
                    .font(.caption)
                Text("long")
                Text("and")
                    .font(.title)
                Text("prosper")
                    .font(.largeTitle)
            }
        }
    }
}

struct AlignmentAndAlignmentGuides_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentAndAlignmentGuides()
    }
}
