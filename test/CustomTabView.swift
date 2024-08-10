import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab = 1
    @State private var isPressed = false

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
                        isPressed = false
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
                        isPressed = false
                    }) {
                        Image(systemName: selectedTab == 2 ? "star.fill" : "star")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == 2 ? .purple : .gray)
                            .shadow(radius:1)
                    }
                    
                    Spacer()
                }
                .padding()
                .background(Color(red: 208/255, green: 195/255, blue: 241/255))
                .clipShape(Capsule())
                .shadow(radius: 5)
                
                // Large middle button
                Button(action: {
                    selectedTab = 1
                    withAnimation {
                        isPressed.toggle()
                    }
                }) {
                    Image("obsqura_logo_dark")
                        .resizable() // Allows the image to be resized
                        .aspectRatio(contentMode: .fit) // Maintains aspect ratio
                        .frame(width: 70, height: 70) // Sets the size of the image
                        .clipShape(Circle()) // Clips the image into a circle
                        .background(Circle().fill(Color(red: 153/255, green: 146/255, blue: 213/255)))
                        //.shadow(color: isPressed ? Color.black.opacity(0.2) : Color.clear, radius: isPressed ? 10 : 0)                }
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 70, height: 70)  // Adjust the size of the circle
//                        .background(Circle().fill(Color.white))
                        .shadow(color: isPressed ? Color.black.opacity(0.2) : Color.clear, radius: isPressed ? 10 : 0)                }
                .offset(y: -20)  // Adjust this value to make the circle float above the navbar
                .onTapGesture {
                    withAnimation {
                        isPressed.toggle()
                    }
                }
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
