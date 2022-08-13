//
//  Animation2.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Animation2: View {
    @State var isActive = false
    var body: some View {
        Spacer()
        
        VStack {
            Rectangle()
                .frame(height: 25)
            
            Rectangle()
                .frame(height: 25)
            
            Rectangle()
                .frame(width: 80,height: 40)
            
        }
        
        .offset(x: isActive ? 0 : -ScreenSize.width)
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .animation(.default, value: isActive)

        Spacer()
        
        Button {
            isActive.toggle()
        } label: {
            Text("Animate")
        }
        .padding(.bottom, 8)
    }
}

struct Animation2_Previews: PreviewProvider {
    static var previews: some View {
        Animation2()
    }
}
