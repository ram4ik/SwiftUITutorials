//
//  UsingAlertAndSheetWithOptionals.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct UsingAlertAndSheetWithOptionals: View {
    @State private var selecedUser: User? = nil
    @State private var isShowingAlert = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                self.selecedUser = User()
                self.isShowingAlert = true
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text(selecedUser!.id))
            }
    }
}

struct UsingAlertAndSheetWithOptionals_Previews: PreviewProvider {
    static var previews: some View {
        UsingAlertAndSheetWithOptionals()
    }
}
