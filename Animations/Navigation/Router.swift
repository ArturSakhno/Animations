//
//  AllAnimations.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

enum Router: CaseIterable, Identifiable {
    case animation1
    case animation2
    case animation3
    case animation4
    case animation5
    case animation6
    case animation7

    var id: Self { self }

    @ViewBuilder var view: some View {
        switch self {
        case .animation1:
            Screen(title: "Animation1", destination: Animation1())
        case .animation2:
            Screen(title: "Animation2", destination: Animation2())
        case .animation3:
            Screen(title: "Animation3", destination: Animation3())
        case .animation4:
            Screen(title: "Animation4", destination: Animation4())
        case .animation5:
            Screen(title: "Animation5", destination: Animation5())
        case .animation6:
            Screen(title: "Animation6", destination: Animation6())
        case .animation7:
            Screen(title: "Animation7", destination: Animation7())
        }
    }
}
