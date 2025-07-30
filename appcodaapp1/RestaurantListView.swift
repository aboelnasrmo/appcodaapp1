//
//  ListAndForEach.swift
//  appcodaapp1
//
//  Created by Mohammad Aboelnasr on 30/07/2025.
//

import SwiftUI

struct RestaurantListView: View {
    let restaurantNames: [String] = [
        "Cafe Deadend",
        "Homei",
        "Teakha",
        "Cafe Loisl",
        "Petite Oyster",
        "For Kee Restaurant",
        "Po's Atelier",
        "Bourke Street Bakery",
        "Haigh's Chocolate",
        "Palomino Espresso",
        "Upstate",
        "Traif",
        "Graham Avenue Meats And Deli",
        "Waffle & Wolf",
        "Five Leaves",
        "Cafe Lore",
        "Confessional",
        "Barrafina",
        "Donostia",
        "Royal Oak",
        "CASK Pub and Kitchen"
    ]
    let restaurantLocations: [String] = [
        "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong",
        "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney",
        "New York", "New York", "New York", "New York", "New York",
        "New York", "New York", "London", "London", "London", "London"
    ]

    let restaurantTypes: [String] = [
        "Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causal Drink",
        "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood",
        "American", "American", "Breakfast & Brunch", "Coffee & Tea",
        "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish",
        "British", "Thai"
    ]
    var body: some View {
        List{
            ForEach (restaurantNames.indices,id: \.self){ index in
                VStack(alignment:.leading,spacing: 20) {
                    Image("\(restaurantNames[index])")
                        .resizable()
                        .frame(width: .infinity, height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    VStack(alignment: .leading) {
                        Text("\(restaurantNames[index])")
                            .font(.system(.title,design: .rounded))
                        Text("\(restaurantLocations[index])")
                            .font(.system(.body,design: .rounded))
                        Text("\(restaurantLocations[index])")
                            .font(.system(.subheadline,design: .rounded))
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        
    }
}

#Preview("Dark Mode") {
    RestaurantListView()
        .preferredColorScheme(.dark)
}
