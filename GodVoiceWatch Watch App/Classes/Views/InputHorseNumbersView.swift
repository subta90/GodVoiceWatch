//
//  InputHorseNumbersView.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/01.
//

import SwiftUI

struct InputHorseNumbersView: View {
    // フルゲート時の馬番数
    private let maxHorseNumber = 18

    var body: some View {
        VStack {
            Text(R.string.localizable.inputHorseTitleText())
            List {
                ForEach(0..<maxHorseNumber, id: \.self) { index in
                    HStack {
                        let horseNumberString = String(index + 1)
                        NavigationLink(destination: GodVoiceView()) {
                            Text(horseNumberString)
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        // TODO: 次の画面に選択したhorseNumberを渡す
                    }
                }
            }
        }
    }
}


struct InputHorseNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        InputHorseNumbersView()
    }
}
