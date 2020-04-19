//
//  UnderstandingFramesAndCoordinates.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(Color.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader { geo in
                Text("Center")
                    .background(Color.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Custom center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Global center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                }
            }.background(Color.orange)
            Text("Right")
        }
    }
}

struct UnderstandingFramesAndCoordinates: View {
    var body: some View {
//        VStack {
//            GeometryReader { geo in
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .frame(width: geo.size.width * 0.9)
//                    .background(Color.red)
//            }
//            Text("More text")
//                .background(Color.blue)
//        }
        OuterView()
        .background(Color.green)
        .coordinateSpace(name: "Custom")
    }
}

struct UnderstandingFramesAndCoordinates_Previews: PreviewProvider {
    static var previews: some View {
        UnderstandingFramesAndCoordinates()
    }
}
