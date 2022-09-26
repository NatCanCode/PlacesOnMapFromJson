//
//  ContentView.swift
//  PlacesonMapFromJson
//
//  Created by N N on 26/09/2022.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8731907, longitude: 2.3631488), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: places) { place in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                    NavigationLink(destination: DetailView(place: place)) {
                        VStack {
                            Image(systemName: "pin.fill")
                                .padding(10)
                        }
                    }
                }
            }
//            .navigationBarTitle(Text("Coworking places"), displayMode: .large)
//            .background(Color("Background"))
//            .background(LinearGradient(colors: [.yellow, .purple, .black],
//                                       startPoint: .top,
//                                       endPoint: .bottom))
//            .scrollContentBackground(.hidden)
//            .ignoresSafeArea()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Help on json: https://youtu.be/J06P6AMKo5Q

