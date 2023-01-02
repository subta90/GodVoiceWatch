//
//  StartView.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/01.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 44) {
                Text(R.string.localizable.titleText)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: InputNumberOfHorsesView()) {
                    Text(R.string.localizable.startButtonText())
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
