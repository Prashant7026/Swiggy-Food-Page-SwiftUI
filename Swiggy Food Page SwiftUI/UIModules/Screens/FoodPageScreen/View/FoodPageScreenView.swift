//
//  FoodPageScreenView.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//
//4, 86, 65
import SwiftUI

struct FoodPageScreenView: View {
    let categoriesArray = StringConstants.sharedInstance.categoryElements
    @State private var isShowingProgressView = false
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVStack(spacing: 0.0, pinnedViews: [.sectionHeaders]) {
                    Group {
                        Group {
                            topView()
                        }
                        .background(Color(red: 4.0/255.0, green: 86.0/255.0, blue: 65.0/255.0))
                        .clipShape(CustomRoundedCorners(radius: 30.0, corners: [.bottomLeft, .bottomRight]))
                        
                        bannerView()
                        
                        welcomeTextView()
                        
                        foodCategoryView()
                        
                        userNameTextView()
                    }
                    .padding(.bottom, 16.0)
                    
                    foodMenuCategoriesView()
                    
                    Section(header: filterHeaderView()) {
                        Spacer()
                            .frame(height: 16.0)
                        Group {
                            restaurantView()
                        }
                        .padding(.bottom, 16.0)
                    }
                }
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            .background(Color.white)
//            .edgesIgnoringSafeArea(.horizontal)
            .toolbarBackground(Color(red: 4.0/255.0, green: 86.0/255.0, blue: 65.0/255.0), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    ZStack {
//                        Color(red: 4.0/255.0, green: 86.0/255.0, blue: 65.0/255.0)
//                            .edgesIgnoringSafeArea(.top)
//                            .frame(height: 120)
//                        
//                        VStack(spacing: 8) {
//                            AddressAndProfileHeaderTopBarSubView()
//                            SearchBarSubView()
//                        }
//                    }
//                }
//            }
//            .onAppear {
//                UIScrollView.appearance().bounces = false
//            }
//            .onDisappear {
//                UIScrollView.appearance().bounces = true
//            }
        }
    }


    
    private func topView() -> some View {
        VStack(spacing: 16.0){
            Group{
                AddressAndProfileHeaderTopBarSubView()
                SearchBarSubView()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("It's the season to")
                        Text("Celebrate & Party!")
                            .font(.headline)
                    }
                    .foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "tree.fill")
                }
                
                ZStack{
                    Divider()
                        .frame(height: 1.0)
                        .overlay(Color.gray)
                    Text("Get Flat ₹175 OFF")
                        .foregroundColor(Color.yellow)
                        .padding(.horizontal, 5.0)
                        .background(Color(red: 4.0/255.0, green: 86.0/255.0, blue: 65.0/255.0))
                }
            }
            .padding(.horizontal, 16.0)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25.0){
                    ForEach(categoriesArray, id: \.self) { categoryItem in
                        VStack{
                            categoryItem.categoryImage
                                .resizable()
                                .frame(height: 50.0)
                                .aspectRatio(1.5, contentMode: .fit)
                                .cornerRadius(8.0)
                            Text(categoryItem.categoryName)
                                .foregroundColor(Color.white)
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal, 16.0)
            }
            
        }
    }
    
    private func bannerView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10.0){
                ForEach(0..<10) {_ in
                    AppImageProvider.bannerImage
                        .resizable()
                        .frame(height: 189.0)
                        .aspectRatio(1.85, contentMode: .fit)
                        .cornerRadius(16.0)
                }
            }
            .padding(.horizontal, 16.0)
        }
    }
    
    private func welcomeTextView() -> some View {
        HStack {
            Text("👇🏻")
            VStack(alignment: .leading) {
                Text("ENJOY YOUR WELCOME OFFER!")
                    .font(.headline)
                Text("Get flat ₹125 off on your next order")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16.0)
    }
    
    private func foodCategoryView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10.0){
                ForEach(0..<10) {_ in
                    ZStack(alignment: .bottomLeading){
                        AppImageProvider.burgerImage
                            .resizable()
                            .frame(height: 150.0)
                            .aspectRatio(0.9, contentMode: .fit)
                            .cornerRadius(16.0)
                        Image(systemName: "heart")
                            .foregroundColor(Color.white)
                            .offset(x: 100, y: -120)
                        Text("20% OFF")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.leading, 8.0)
                    }
                }
            }
            .padding(.horizontal, 16.0)
        }
    }
    
    private func userNameTextView() -> some View {
        Text("Prashant, what's on your mind?")
            .textCase(.uppercase)
            .bold()
            .font(.caption)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16.0)
    }
    
    private func foodMenuCategoriesView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16.0) {
                ForEach(0..<10) {_ in
                    VStack {
                        ForEach(0..<2) {_ in
                            VStack(spacing: 0.0){
                                AppImageProvider.cakeImage
                                    .resizable()
                                    .frame(width: 100.0, height: 100.0)
                                Text("Cakes & \nDesserts")
                                    .offset(y: -15)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 16.0)
        }
    }
    
    private func filterHeaderView() -> some View {
        VStack {
            filterView()
                .padding(.top, 16.0)
                .background(Color.white)
        }
        .padding(.bottom, 8.0)
    }
    
    private func filterView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                filterViewButton("Filter", "line.3.horizontal.decrease.circle")
                filterViewButton("Sort By", "chevron.down")
                filterViewButton("Fast Delivery")
                filterViewButton("Cuisines", "chevron.down")
                filterViewButton("New on Swiggy")
                filterViewButton("Ratings 4.0+")
                filterViewButton("Pure Veg")
                filterViewButton("Offers")
                filterViewButton("Rs. 300-Rs. 600")
                filterViewButton("Less than Rs. 300")
            }
            .padding(.horizontal, 16.0)
        }
    }
    
    private func filterViewButton(_ text: String, _ imgName: String? = nil) -> some View{
        Button {
            // FIlter button
        } label: {
            HStack {
                Text(text)
                if let img = imgName{
                    Image(systemName: img)
                }
            }
        }
        .foregroundColor(Color.black)
        .padding(8.0)
        .overlay {
            RoundedRectangle(cornerRadius: 26.0)
                .stroke(Color.gray, lineWidth: 1.0)
        }
    }
    
    private func restaurantView() -> some View {
        ForEach(0..<10) { _ in
            RestaurantCells()
                .padding(.horizontal, 16.0)
        }
    }
}

#Preview {
    FoodPageScreenView()
}
