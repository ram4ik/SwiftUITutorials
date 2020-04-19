//
//  HowToUseGestures.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct HowToUseGestures: View {
    @State private var currentAmount: Angle = .degrees(0)
    @State private var finalAmount: Angle = .degrees(0)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture(count: 2) {
                print("Double tapped!")
            }
            .onLongPressGesture(minimumDuration: 2) {
                print("Long pressed!")
            }
            .rotationEffect(finalAmount + currentAmount)
            .gesture(
                RotationGesture()
                    .onChanged{ angle in
                        self.currentAmount = angle
                    }
                    .onEnded{ angle in
                        self.finalAmount += self.currentAmount
                        self.currentAmount = .degrees(0)
                    }
                
            )
    }
}

struct HowToUseGestures_Previews: PreviewProvider {
    static var previews: some View {
        HowToUseGestures()
    }
}
