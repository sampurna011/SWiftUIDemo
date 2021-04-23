//
//  MapViewSample.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI
import MapKit

struct MapViewSample: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 27.164060, longitude: 82.924380),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapViewSample_Previews: PreviewProvider {
    static var previews: some View {
        MapViewSample()
    }
}
