//
//  Animation7.swift
//  Animations
//
//  Created by A S on 20.08.2022.
//

import SwiftUI

struct Animation7: View {
    @State var isOn = false
    @State var input = ""
    @State var sliderValue = 0.5
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Switcher")
            }
            
            VStack {
                Image(systemName: "building.columns")
                Text("Your extra options")

                TextField("Extra Info", text: $input)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Slider(value: $sliderValue)
                

            }
            .padding()
            .background(Color.green)
            .cornerRadius(8)
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 : 0.25)
            .animation(.default, value: isOn)
            
            .disabled(!isOn)
            
        }
        .padding()

    }
}

struct Animation7_Previews: PreviewProvider {
    static var previews: some View {
        Animation7()
    }
}
