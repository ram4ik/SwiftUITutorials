//
//  DisablingUserInteractivityWithAllowHitTesting.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct DisablingUserInteractivityWithAllowHitTesting: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 300, height: 300)
                    .onTapGesture {
                        print("Rectangle tapped!")
                    }
                
                Circle()
                    .fill(Color.green)
                    .frame(width: 300, height: 300)
                    //.contentShape(Rectangle())
                    .onTapGesture {
                        print("Circle tapped!")
                    }
                    .allowsHitTesting(false)
            }
            VStack {
                Text("Hello")
                Spacer()
                    .frame(height: 100)
                Text("World")
            }.onTapGesture {
                print("VStack tapped!")
            }
        }
    }
}

struct DisablingUserInteractivityWithAllowHitTesting_Previews: PreviewProvider {
    static var previews: some View {
        DisablingUserInteractivityWithAllowHitTesting()
    }
}
