//
//  HowToBeNotifiedWhenAppMOvesToTheBackground.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct HowToBeNotifiedWhenAppMOvesToTheBackground: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                print("Moving to the background!")
        }
    }
}

struct HowToBeNotifiedWhenAppMOvesToTheBackground_Previews: PreviewProvider {
    static var previews: some View {
        HowToBeNotifiedWhenAppMOvesToTheBackground()
    }
}
