//
//  RestaurantCells.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

struct RestaurantCells: View {
    var body: some View {
        HStack(spacing: 16.0) {
            imageView()
            
            detailView()
        }
    }
    
    private func imageView() -> some View {
        ZStack(alignment: .bottomLeading) {
            AppImageProvider.mcDonaldImage
                .resizable()
                .frame(width: 150.0, height: 200.0)
                .cornerRadius(16.0)
            Image(systemName: "heart")
                .foregroundColor(Color.white)
                .offset(x: 120, y: -170)
            VStack(alignment: .leading, spacing: 2.0) {
                Group{
                    Text("FLAT DEAL")
                    Text("₹125 OFF")
                }
                .foregroundColor(Color.white)
                .font(.headline)
                Text("Above ₹549")
                    .foregroundColor(Color.gray)
                    .font(.caption)
            }
            .padding(.leading, 8.0)
            .padding(.bottom, 8.0)
        }
    }
    
    private func detailView() -> some View {
        VStack(alignment: .leading) {
            Group{
                Text("Bolt")
                Text("McDonald's")
                Text("4.4 (46K+) 15-20 mins")
            }
            .font(.headline)
            Group {
                Text("Burgers, Beverages, Cafe")
                Text("Indiranagar 0.7 km")
            }
            .font(.caption)
            .foregroundColor(Color.gray)
            
            Spacer()
            
            HStack {
                Text("Free delivery")
                Spacer()
                Text("One")
            }
            .textCase(.uppercase)
            .foregroundColor(Color.red)
            .font(.headline)
        }
    }
}

#Preview {
    RestaurantCells()
}
