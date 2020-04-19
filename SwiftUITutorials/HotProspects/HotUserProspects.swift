//
//  HotProspects.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

class HotUser: ObservableObject {
    @Published var name = "Taylor Swift"
}

struct EditView: View {
    @EnvironmentObject var hotUser: HotUser
    
    var body: some View {
        TextField("Name", text: $hotUser.name)
    }
}

struct DisplayView: View {
    @EnvironmentObject var hotUser: HotUser
    
    var body: some View {
        Text(hotUser.name)
    }
}

struct HotUserProspects: View {
    let hotUser = HotUser()
    
    var body: some View {
        VStack {
            EditView()
                //.environmentObject(hotUser)
            
            DisplayView()
                //.environmentObject(hotUser)
        }.environmentObject(hotUser)
    }
}

struct HotUserProspects_Previews: PreviewProvider {
    static var previews: some View {
        HotUserProspects()
    }
}
