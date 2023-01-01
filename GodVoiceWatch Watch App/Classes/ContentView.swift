//
//  ContentView.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(R.string.localizable.titleText)
                .multilineTextAlignment(.center)
            Spacer()
            Button(R.string.localizable.startButtonText()) {
                // TODO: 出頭数を入力させる画面に遷移
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
