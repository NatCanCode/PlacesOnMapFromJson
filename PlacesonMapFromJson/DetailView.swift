//
//  DetailView.swift
//  PlacesonMapFromJson
//
//  Created by N N on 27/09/2022.
//

import SwiftUI

struct DetailView: View {

    var place: Place

    var body: some View {
        ZStack {
            Rectangle()
            LinearGradient(colors: [.yellow, .purple],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack {
                Image(systemName: "laptopcomputer")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text("\(place.name)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text("\(place.address)")
                    .padding(5)
                Text("\(place.type)")
                    .padding(5)
                if place.wifi == true {
                    Text("Wifi")
                } else {
                    Text("No wifi")
                }
                Link("Website", destination: URL(string:"\(place.url)")!)
                    .padding(5)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: places[0])
    }
}
