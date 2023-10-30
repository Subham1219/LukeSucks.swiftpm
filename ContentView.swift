import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AddPlayerView()) {
                    Text("Add Player")
                }
                PlayerListView()
            }
            .navigationTitle("FC Barcelona Players")
        }
    }
}
