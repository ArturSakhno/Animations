//
//  Animation4.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Animation4: View {
    @State var isActive = false
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
    
                ZStack {
                    Group {
                        Circle()
                            .frame(width: 40, height: 40)
                            .offset(x: isActive ? -80 : 0)
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .offset(x: isActive ? -60 : 0, y: isActive ? -60 : 0)
                        Circle()
                            .frame(width: 40, height: 40)
                            .offset(y: isActive ? -80 : 0)
                    }
                    .opacity(isActive ? 1 : 0)
                    
                    Button {
                        isActive.toggle()
                    } label: {
                        ZStack {
                            Circle()
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                    }
                    .rotationEffect(Angle(degrees: isActive ? 45 : 0))
                    .frame(width: 60, height: 60)
                    .padding(16)
                }
                .animation(.default, value: isActive)
            }
        }
        
    }
}

struct Animation4_Previews: PreviewProvider {
    static var previews: some View {
        Animation4()
    }
}
