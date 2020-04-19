//
//  UsingGroupsAsTransparentLayoutContainers.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name:")
            Text("Country:")
            Text("Pets:")
        }
    }
}

struct UsingGroupsAsTransparentLayoutContainers: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(content: UserView.init)
            } else {
                HStack(content: UserView.init)
            }
        }
    }
}

struct UsingGroupsAsTransparentLayoutContainers_Previews: PreviewProvider {
    static var previews: some View {
        UsingGroupsAsTransparentLayoutContainers()
    }
}
