//
//  Animation1.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Animation1: View {
    var title: String { "Animation1" }    
    @State var change = false
    
    var body: some View {
        Spacer()
        
        VStack(spacing: change ? 100 : 1) {
            HStack(alignment: .bottom, spacing: change ? 100 : 1) {
                Rectangle()
                    .frame(width: 72, height: 36)
                
                Rectangle()
                    .frame(width: 36, height: 72)
            }.offset(x: -18)
            
            HStack(alignment: .top, spacing: change ? 100 : 1) {
                Rectangle()
                    .frame(width: 36, height: 72)
                                        
                Rectangle()
                    .frame(width: 72, height: 36)
            }.offset(x: 18)
        }
        .foregroundColor(change ? .green : .red)
        .rotationEffect(Angle(degrees: change ? -90 : 0))
        .opacity(change ? 0 : 1)
        .animation(.default, value: change)
        
        Spacer()
        
        Button {
            change.toggle()
        } label: {
            Text("Animate")
        }
        .padding(.bottom, 8)
    }
}

struct Animation1_Previews: PreviewProvider {
    static var previews: some View {
        Animation1()
    }
}
