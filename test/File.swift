//
//  File.swift
//  test
//
//  Created by Amit Khandelwal on 08/08/24.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab = 1

    var body: some View {
        VStack {
            if selectedTab == 0 {
                FirstView()
            } else if selectedTab == 1 {
                MiddleView()
            } else if selectedTab == 2 {
                ThirdView()
            }

            Spacer()

            ZStack {
                HStack {
                    Spacer()

                    Button(action: {
                        selectedTab = 0
                    }) {
                        Image(systemName: selectedTab == 0 ? "star.fill" : "star")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == 0 ? .purple : .gray)
                    }

                    Spacer()

                    Button(action: {
                        selectedTab = 1
                    }) {
                        Image("customIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }

                    Spacer()

                    Button(action: {
                        selectedTab = 2
                    }) {
                        Image(systemName: selectedTab == 2 ? "star.fill" : "star")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == 2 ? .purple : .gray)
                    }

                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
                .clipShape(Capsule())
                .shadow(radius: 5)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
