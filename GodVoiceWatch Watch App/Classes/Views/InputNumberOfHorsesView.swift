//
//  InputNumberOfHorsesView.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/01.
//

import SwiftUI

struct InputNumberOfHorsesView: View {
    // フルゲート時の馬番数
    private let maxHorseNumber = 18
    
    var body: some View {
        NavigationView {
            VStack {
                Text(R.string.localizable.inputHorseTitleText())
                List {
                    ForEach(0..<maxHorseNumber, id: \.self) { index in
                        HStack {
                            let numberOfHorses = index + 1
                            NavigationLink(destination: SelectHorseNumberView(numberOfHorses: numberOfHorses)) {
                                Text(String(numberOfHorses))
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        .contentShape(Rectangle())
                    }
                }
            }
        }
    }
}


struct InputHorseNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        InputNumberOfHorsesView()
    }
}
