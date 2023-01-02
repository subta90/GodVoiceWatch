//
//  HiddenViewModifier.swift
//  GodVoiceWatch Watch App
//
//  Created by subta on 2023/01/02.
//

import SwiftUI

struct HiddenViewModifier: ViewModifier {
    let isHidden: Bool
    
    func body(content: Content) -> some View {
        if isHidden {
            EmptyView()
        } else {
            content
        }
    }
}
