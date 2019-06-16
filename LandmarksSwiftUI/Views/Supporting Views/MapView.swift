//
//  MapView.swift
//  LandmarksSwiftUI
//
//  Created by Marquis Dennis on 6/7/19.
//  Copyright © 2019 Marquis Dennis. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : View, UIViewRepresentable {
    /// The type of `UIView` to be presented.
    typealias UIViewType = MKMapView
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MapView.UIViewType {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
