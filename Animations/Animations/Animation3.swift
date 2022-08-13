//
//  Animation3.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Animation3: View {
    @State var isActive = false
    
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Text("Animate")
        }
        .padding(.top, 8)
        
        Spacer()
        
        Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 200)
            .offset(y: isActive ? 0 : 300)
            .scaleEffect(isActive ? 1 : 0.25, anchor: .bottom)
            .padding(16)
            .cornerRadius(8)
            .animation(.default, value: isActive)
    }
    
}

struct Animation3_Previews: PreviewProvider {
    static var previews: some View {
        Animation3()
    }
}
