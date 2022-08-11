//
//  MapView.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//



import SwiftUI
import MapKit

struct MapView: View {
    
    @State var coordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), latitudinalMeters: 5, longitudinalMeters: 5)
    
    var body: some View {
        Map(coordinateRegion: $coordinate).ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}




