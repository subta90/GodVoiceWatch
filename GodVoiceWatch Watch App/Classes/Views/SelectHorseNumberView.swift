//
//  SelectHorseNumberView.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/02.
//

import SwiftUI

struct SelectHorseNumberView: View {
    
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    @State var numberOfHorses: Int
    @State var currentHorseNumber: Int = 1
    @State var decided = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text(decided ? R.string.localizable.godVoiceDecidedText : R.string.localizable.godVoiceTitleText)
        Spacer()
        Text(String(currentHorseNumber))
            .font(.system(size: 32))
            .bold()
            .onReceive(timer) { _ in
                updateCurrentHorseNumber()
            }
            .onTapGesture {
                decided = true
                timer.upstream.connect().cancel()
            }
        Spacer()
        Button(R.string.localizable.godVoiceRetryButtonText()) {
            dismiss.callAsFunction()
        }
        .modifier(HiddenViewModifier(isHidden: !decided))
    }
    
    private func updateCurrentHorseNumber() {
        currentHorseNumber = Int.random(in: 1 ... numberOfHorses)
    }
}

struct GodVoiceView_Previews: PreviewProvider {
    static var previews: some View {
        SelectHorseNumberView(numberOfHorses: 16)
    }
}
