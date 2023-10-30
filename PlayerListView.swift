//
//  PlayerListView.swift
//  LukeSucks
//
//  Created by Subham Pathak on 10/30/23.
//

import Foundation
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
