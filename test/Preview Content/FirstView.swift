import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            // Profile Picture Section
            ZStack(alignment: .bottom) {
                Image("profilePicture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .frame(maxWidth: .infinity)
                    .clipped() // Ensures the image is clipped to the bounds
                    .cornerRadius(0)

                // Overlay: Pencil and Heart Buttons
                HStack {
                    Button(action: {
                        // Edit action
                    }) {
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding(.leading, 20)
                    .offset(x:10, y: -20)

                    Spacer()

                    Button(action: {
                        // Favorite action
                    }) {
                        Image("heart")
                            .resizable() // Allows the image to be resized
                            .aspectRatio(contentMode: .fit) // Maintains aspect ratio
                            .frame(width: 30, height: 30) // Sets the size of the image
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle()) // Clips the image into a circle
                            .shadow(radius: 5)
                    }
                    .padding(.trailing, 20)
                    .offset(x:-10,y: -20)
                }

                // Image indicator circles
                HStack {
                    ForEach(0..<4) { _ in
                        Circle()
                            .fill(Color.black.opacity(0.7))
                            .frame(width: 10, height: 10)
                    }
                }
                .padding(.bottom, 20)
            }

            // Bio Section (scrollable)
            ScrollView {
                Text("Scroll-able bio, interests, connections.")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding([.leading, .trailing, .bottom])

            Spacer()
        }
        .edgesIgnoringSafeArea(.top) // Ensures profile picture takes up half the screen
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
