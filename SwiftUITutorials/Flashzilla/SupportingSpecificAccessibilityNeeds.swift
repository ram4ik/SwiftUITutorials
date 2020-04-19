//
//  SupportingSpecificAccessibilityNeeds.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct SupportingSpecificAccessibilityNeeds: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentateWithoutColor
    
    var body: some View {
        HStack {
            if differentateWithoutColor {
                Image(systemName: "checkmark.circle")
            }
            
            Text("Success")
        }
        .padding()
        .background(differentateWithoutColor ? Color.black : Color.green)
        .foregroundColor(Color.white)
        .clipShape(Capsule())
    }
}

struct SupportingSpecificAccessibilityNeeds_Previews: PreviewProvider {
    static var previews: some View {
        SupportingSpecificAccessibilityNeeds()
    }
}
