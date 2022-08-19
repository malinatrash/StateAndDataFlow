//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
    @State private var name = ""
    private var nameSymbolsCount: Int {
        name.count
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 50) {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                CountCharactersText(countCharaters: nameSymbolsCount)
                Spacer()
            }.padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(nameSymbolsCount < 3)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            userManager.user.name = name
            userManager.user.isRegistered.toggle()
            StorageManager.shared.saveUser(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
