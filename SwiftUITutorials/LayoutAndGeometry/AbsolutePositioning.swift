//
//  AbsolutePositioning.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 18.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct AbsolutePositioning: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .position(x: 100, y: 100)
            .background(Color.red)
    }
}

struct AbsolutePositioning_Previews: PreviewProvider {
    static var previews: some View {
        AbsolutePositioning()
    }
}
