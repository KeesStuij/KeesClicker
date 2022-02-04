import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0
    var body: some View {
        VStack {
            Text("Kees, world!")
            Button(
                action: {
                    print("Click cookie!")
                    timesClicked = timesClicked + 1
                },
                label: {
                    Image("cookie")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
            )
            Text("You clicked the cookie  \(timesClicked)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
