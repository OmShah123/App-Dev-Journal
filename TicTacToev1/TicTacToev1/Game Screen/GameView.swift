//
//  GameView.swift
//  TicTacToev1
//
//  Created by Shah, Om on 2/26/24.
//

import SwiftUI

struct GameView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button("End Game"){
                    dismiss()
                }.buttonStyle(.bordered)
            }
        } //end of toolbar
        .navigationTitle("Tic-Tac-Toe")
    } //end of Navigation Stack
}

#Preview {
    GameView()
}
