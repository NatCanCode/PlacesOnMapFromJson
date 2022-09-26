//
//  DetailView.swift
//  PlacesonMapFromJson
//
//  Created by N N on 26/09/2022.
//

import SwiftUI

struct DetailView: View {

    var place: Place

    var body: some View {
        VStack {
            Image(systemName: "laptopcomputer")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            Text("\(place.name)")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            Text("Latitude: \(place.lat)")
                .padding(2)
            Text("Longitude: \(place.lon)")
                .padding(5)
            Text("\(place.address)")
                .padding(5)
            Text("\(place.type)")
                .padding(5)
            Text("\(place.url)")
                .padding(5)
            if place.wifi == true {
                Text("Wifi")
            } else {
                Text("No wifi")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: places[0])
    }
}
