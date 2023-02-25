//
//  ContentView.swift
//  My Book Shelf
//
//  Created by jimenez on 2/25/23.
//

import SwiftUI


struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct ContentView: View {
    let restaurants = [
        Restaurant(name: "Joe's Original"),
        Restaurant(name: "The Real Joe's Original"),
        Restaurant(name: "Original Joe's")
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                
                VStack{
                    List(restaurants) { restaurant in
                        RestaurantRow(restaurant: restaurant)
                    }
                }
            }
//            .ignoresSafeArea()
            
            .navigationTitle("Bookshelf")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
