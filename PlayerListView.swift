import SwiftUI
struct PlayerListView: View {
    @StateObject private var viewModel = PlayerListViewModel()
    var body: some View {
        List(viewModel.players) { player in
            Text(player.name)
        }
        .onAppear {
            viewModel.getAllPlayers()
        }

    }

}
