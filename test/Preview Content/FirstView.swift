//
//  SwiftUIView.swift
//  test
//
//  Created by Amit Khandelwal on 08/08/24.
//
import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            // Profile Picture Section
            HStack {
                Button(action: {
                    // Edit action
                }) {
                    Image(systemName: "pencil")
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }
                
                Spacer()
                
                VStack {
                    Image("profilePicture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(radius: 10)
                    
                    HStack {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    // Favorite action
                }) {
                    Image(systemName: "heart")
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }
            }
            .padding()
            
            // User Info Section
            Text("B. Rabbit, 22")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            // Bio Section
            ScrollView {
                Text("Scroll-able bio, interests, connections.")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 200) // Adjust the height as needed
            .background(Color.purple)
            .cornerRadius(10)
            .padding()
            
            Spacer()
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
