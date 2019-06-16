//
//  CircleImageView.swift
//  LandmarksSwiftUI
//
//  Created by Marquis Dennis on 6/7/19.
//  Copyright © 2019 Marquis Dennis. All rights reserved.
//

import SwiftUI

struct CircleImageView : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10.0)
    }
}

#if DEBUG
struct CircleImageView_Previews : PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
#endif
