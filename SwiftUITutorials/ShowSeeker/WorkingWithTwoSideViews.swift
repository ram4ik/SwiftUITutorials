//
//  WorkingWithTwoSideViews.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct WorkingWithTwoSideViews: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("New Secondary")) {
                Text("Hello, World!")
                    .navigationBarTitle("Primary")
            }
            
            Text("Secondary")
        }
    }
}

struct WorkingWithTwoSideViews_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithTwoSideViews()
    }
}
