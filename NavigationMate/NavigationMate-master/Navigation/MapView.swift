//
//  MapView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation


struct MapView: UIViewRepresentable {
    @Binding var CenterPosition: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView ()
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        
    }
    
    //51.897514, 4.524997


    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator:NSObject, MKMapViewDelegate  {
        var parent:MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView){
            parent.CenterPosition = mapView.centerCoordinate
        }
    }
}

extension MKPointAnnotation{
    static var restaurant: MKPointAnnotation{
        let annotation = MKPointAnnotation()
        annotation.title = "Mallaka"
        annotation.subtitle = "Restaurant Rotterdam"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.897514, longitude: 4.524997)
        
        return annotation
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView( CenterPosition: .constant(MKPointAnnotation.restaurant.coordinate))
    }
}
