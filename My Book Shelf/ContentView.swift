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

struct ColorSquare: View {
    let color: Color
    
    var body: some View {
        color
        .frame(width: 150, height: 150)
    }
}

struct ContentView: View {
    let restaurants = [
        Restaurant(name: "Joe's Original"),
        Restaurant(name: "The Real Joe's Original"),
        Restaurant(name: "Original Joe's")
    ]
    
    let gradient = LinearGradient(colors: [Color.orange,Color.green],
                                  startPoint: .top, endPoint: .bottom)
    
    let columns = [
        GridItem(.fixed(100)),
               GridItem(.flexible()),
        ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .opacity(0.8)
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    
                    
                    Grid {
                        GridRow {
                            ForEach(0..<3) { _ in

                                ColorSquare(color: .pink)
                            }
                        }
                        GridRow {
                            ForEach(0..<3) { _ in

                                ColorSquare(color: .yellow)
                            }
                        }
                        GridRow {
                            ForEach(0..<3) { _ in

                                ColorSquare(color: .mint)
                            }
                        }
                    }
                    
//                    LazyVGrid(columns: columns, spacing: 20) {
//
//                        HStack{
//
//
//                            ForEach(restaurants) { restaurant in
//
//                                ZStack {
//                                    RoundedRectangle(cornerRadius: 5)
//
//                                    VStack {
//                                        Text(restaurant.name)
//                                            .foregroundColor(.black)
//
//                                        Text("card.answer")
//                                            .foregroundColor(.gray)
//                                    }
//                                    .padding(10)
//                                    .multilineTextAlignment(.center)
//                                }
//                                .frame(width: 150, height: 150)
//                            }
//                            .shadow(radius: 10)
//                        }
//                    }
                }
                
                    
                
                
                .navigationTitle("Bookshelf")
                .font(.title2)
                .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
