//
//  UserData.swift
//  LandmarksSwiftUI
//
//  Created by Marquis Dennis on 6/16/19.
//  Copyright © 2019 Marquis Dennis. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
