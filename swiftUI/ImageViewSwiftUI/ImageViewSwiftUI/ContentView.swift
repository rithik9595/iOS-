import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "car.webp")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            
            // Aspect ratio
            Image(uiImage: UIImage(named: "car.webp")!)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)

            // Frame
            Image(uiImage: UIImage(named: "car.webp")!)
                .resizable()
                .frame(width: 300, height: 300, alignment: .bottom)

            // Shape
            Image(uiImage: UIImage(named: "car.webp")!)
                .resizable()
                .cornerRadius(5)

            Image(uiImage: UIImage(named: "car.webp")!)
                .resizable()
                .clipShape(Circle())

            // System Symbol
            Image(systemName: "cloud")
                .font(.largeTitle)
            Image(systemName: "homekit")
                .font(.largeTitle)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
