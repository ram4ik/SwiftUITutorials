//
//  TriggeringEventsRepeatedlyUsingATimer.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 20.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct TriggeringEventsRepeatedlyUsingATimer: View {
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var counter = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onReceive(timer) { time in
                if self.counter == 5 {
                    self.timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                self.counter += 1
        }
    }
}

struct TriggeringEventsRepeatedlyUsingATimer_Previews: PreviewProvider {
    static var previews: some View {
        TriggeringEventsRepeatedlyUsingATimer()
    }
}
