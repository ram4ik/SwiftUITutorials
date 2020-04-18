//
//  HotProspects.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 18.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct HotProspects: View {
    @State private var backgroundColor = Color.red
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu {
                    Button(action: {
                        self.backgroundColor = .red
                    }) {
                        Text("Red")
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        self.backgroundColor = .green
                    }) {
                        Text("Green")
                    }
                    Button(action: {
                        self.backgroundColor = .blue
                    }) {
                        Text("Blue")
                    }
            }
        }
    }
}

struct HotProspects_Previews: PreviewProvider {
    static var previews: some View {
        HotProspects()
    }
}
