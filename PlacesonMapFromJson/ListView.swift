//
//  ListView.swift
//  PlacesonMapFromJson
//
//  Created by N N on 26/09/2022.
//

import SwiftUI

struct ListView: View {
    
//    var places: [Place] = load("places.json")
    
    var body: some View {
        ZStack {
            Rectangle()
            LinearGradient(colors: [.yellow, .purple, .black],
                           startPoint: .top,
                           endPoint: .bottom)
            NavigationView {
                List {
                    ForEach(places) { place in
                        NavigationLink(destination: DetailView(place: place)) {
                            Text(place.name)
                        }
                    }
                    .listRowBackground(Color("Background"))
                }
//                .navigationBarTitle(Text("Coworking places"), displayMode: .large)
                .scrollContentBackground(.hidden)
                .background(Color("Background"))
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
