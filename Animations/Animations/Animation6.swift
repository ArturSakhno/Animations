//
//  Animation6.swift
//  Animations
//
//  Created by A S on 20.08.2022.
//

import SwiftUI

struct Animation6: View {
    @State var shuffle = false
    var body: some View {
        if shuffle { }
        ZStack {
            ForEach(0...100, id: \.self) { _ in
                Circle()
                    .opacity(0.8)
                    .frame(height: .random(in: 10...40))
                    .position(x: .random(in: 20...ScreenSize.width - 20), y:  .random(in: 50...ScreenSize.height - 200))
            }
            .animation(.default, value: shuffle)
            VStack {
                Spacer()
                Button("Hello") {
                    shuffle.toggle()
                }
            }
        }
        .padding()
        
      
    }
}

struct Animation6_Previews: PreviewProvider {
    static var previews: some View {
        Animation6()
    }
}
