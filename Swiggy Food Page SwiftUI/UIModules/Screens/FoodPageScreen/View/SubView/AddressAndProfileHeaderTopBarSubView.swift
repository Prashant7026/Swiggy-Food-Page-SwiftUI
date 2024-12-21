//
//  AddressAndProfileHeaderTopBarSubView.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

struct AddressAndProfileHeaderTopBarSubView: View {
    var body: some View {
        HStack(spacing: 16.0){
            
            locationView()
            
            Spacer()
            
            HStack{
                oneButtonView()
                profileImageView()
            }
        }
    }
    
    private func locationView() -> some View{
        VStack(alignment: .leading) {
            Button {
                // location bar
            } label: {
                HStack(spacing: 5.0){
                    Image(systemName: "location.fill")
                    Text("New Ashok Nagar")
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(Color.white)
            }
            Text("New Akash Nagar, Stage3, Indiranagar, Bengaluru, Karnataka")
                .lineLimit(1)
                .foregroundColor(Color.gray)
        }
    }
    
    private func oneButtonView() -> some View{
        ZStack{
            Text("One")
                .padding(.vertical, 4.0)
                .padding(.horizontal, 10.0)
                .foregroundColor(Color.white)
                .font(.headline)
                .background(Color.orange)
                .cornerRadius(16.0)
                .overlay {
                    RoundedRectangle(cornerRadius: 16.0)
                        .stroke(Color.black, lineWidth: 1.0)
                }
            Text("BUY")
                .padding(.horizontal, 3.0)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .font(.caption2)
                .offset(y: -14.0)
        }
    }
    
    private func profileImageView() -> some View{
        Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 35.0, height: 35.0)
    }
}

#Preview {
    AddressAndProfileHeaderTopBarSubView()
}
