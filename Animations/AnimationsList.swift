//
//  AnimationsList.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

protocol AnimationType {
    var title: String { get }
}

struct AnimationsList: View {
    
    var body: some View {
        if #available(macOS 13.0, *) {
            NavigationStack {
                List {
                    ForEach(Router.allCases) {
                        $0.view
                    }
                }
            }
        } else {
            NavigationView {
                List {
                    ForEach(Router.allCases) {
                        $0.view
                    }
                }
            }
        }
        
    }
}

struct AnimationsList_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsList()
    }
}
