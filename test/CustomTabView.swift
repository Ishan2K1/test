import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab = 1

    var body: some View {
        VStack {
            // Display the content based on the selected tab
            if selectedTab == 0 {
                FirstView()
            } else if selectedTab == 1 {
                MiddleView()
            } else if selectedTab == 2 {
                ThirdView()
            }

            Spacer()

            // Custom navbar that remains visible on all pages
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

                    // Invisible spacer to create space for the large middle button
                    Spacer().frame(width: 80)  // Adjust this value to control spacing

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

                // Large middle button
                Button(action: {
                    selectedTab = 1
                }) {
                    Image(systemName: "face.smiling")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70)  // Adjust the size of the circle
                        .background(Circle().fill(Color.white))
                        .shadow(radius: 5)
                }
                .offset(y: -20)  // Adjust this value to make the circle float above the navbar
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
