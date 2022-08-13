//
//  AllAnimations.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

enum Router: CaseIterable, Identifiable {
    case animation1

    var id: Self { self }

    @ViewBuilder var view: some View {
        switch self {
        case .animation1:
            Screen(title: "Animation1", destination: Animation1())
        }
    }
}
