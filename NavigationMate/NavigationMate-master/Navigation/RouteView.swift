//
//  RouteView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//
import MapKit
import SwiftUI

struct RouteView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D()
    
    @State private var locations = [MKPointAnnotation]()
    
    var body: some View {
        ZStack{
            MapView(CenterPosition: $centerCoordinate).edgesIgnoringSafeArea(.all)
            
            Circle().fill(Color.blue).opacity(0.3).frame(width: 22, height: 22)
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
