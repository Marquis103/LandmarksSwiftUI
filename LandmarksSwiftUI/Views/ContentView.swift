//
//  ContentView.swift
//  LandmarksSwiftUI
//
//  Created by Marquis Dennis on 6/6/19.
//  Copyright © 2019 Marquis Dennis. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.sizeCategory, .extraLarge)
        }
        
    }
}
#endif
