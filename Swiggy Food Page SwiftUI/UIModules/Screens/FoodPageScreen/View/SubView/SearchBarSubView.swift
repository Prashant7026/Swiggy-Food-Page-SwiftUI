//
//  SearchBarSubView.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

struct SearchBarSubView: View {
    @State private var searchText: String = ""
    
    init() {}
    
    var body: some View {
        HStack{
            TextField("Search for 'Cake'", text: $searchText)
            Spacer()
            if searchText.count >= 1{
                Image(systemName: "xmark")
                    .foregroundColor(Color.gray)
                    .onTapGesture {
                        searchText = ""
                    }
            } else {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
            }
            Divider()
                .frame(height: 20.0)
            Image(systemName: "mic.fill")
                .foregroundColor(Color.orange)
        }
        .padding(16.0)
        .background(Color.white)
        .cornerRadius(16.0)
        .overlay {
            RoundedRectangle(cornerRadius: 16.0)
                .stroke(Color.gray, lineWidth: 1.0)
        }
    }
}

#Preview {
    SearchBarSubView()
}
