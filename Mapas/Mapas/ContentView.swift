//
//  ContentView.swift
//  Mapas
//
//  Created by Student25 on 23/05/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showingSheet = false
    @State private var currentLoc = locationsArray[0]
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2400732, longitude: -53.1805017), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        VStack{
            Text("Países do BRICS")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            Text("\(currentLoc.name)")
                .font(.title2)
            Map(coordinateRegion: $region, annotationItems: locationsArray) { Location in MapAnnotation(coordinate: Location.coordinate) {
                Circle()
                    .stroke(.red, lineWidth: 1)
                    .frame(width: 40, height: 40)
                    .onTapGesture {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        SheetView(location: currentLoc)
                    }
            }
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(locationsArray){ Location in
                        Button(Location.name){
                            currentLoc = Location
                            region.center = Location.coordinate
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal, 5)
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var location: Location
    
    var body: some View{
        VStack{
            Text("\(location.name)")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom, 1)
            AsyncImage(url: URL(string: location.flag)!, scale: 2)
            Text("\(location.description)")
                .font(.body)
                .padding(.horizontal, 25)
        }
    }
}
