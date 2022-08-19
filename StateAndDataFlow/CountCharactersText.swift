//
//  CountCharactersText.swift
//  StateAndDataFlow
//
//  Created by Pavel Naumov on 18.08.2022.
//

import SwiftUI

struct CountCharactersText: View {
    let countCharaters: Int
    var body: some View {
        Text("\(countCharaters)")
            .foregroundColor(setColor())
    }
    private func setColor() -> Color {
        if countCharaters < 3 {
            return .red
        } else {
            return .blue
        }
    }
}


struct CountCharactersText_Previews: PreviewProvider {
    static var previews: some View {
        CountCharactersText(countCharaters: 5)
    }
}
