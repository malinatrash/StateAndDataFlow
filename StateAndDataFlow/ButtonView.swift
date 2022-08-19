//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Pavel Naumov on 19.08.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
    }
}

struct ButtowView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Label", color: .green, action: {})
    }
}
