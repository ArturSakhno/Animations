//
//  Animation5.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Animation5: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Picker("Selector", selection: $viewModel.selection) {
                ForEach(viewModel.selections, id: \.self) {
                    Text("\(String(describing:  $0))")
                }
            }
            .padding()
            .pickerStyle(.segmented)
            
            TabView(selection: $viewModel.selection) {
                ForEach(viewModel.selections, id: \.self) {
                    Rectangle()
                        .cornerRadius(8)
                        .foregroundColor($0)
                        .padding()
                        .tag($0)
                }
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .tabItem {
                    Text("Tab2")
                }
                .transition(.slide)
                .animation(.default, value: viewModel.selection)
        }
    }
}

fileprivate class ViewModel: ObservableObject {
    @Published var selection: Color
    let selections = [Color.red, Color.green, Color.blue]
    
    init() {
        self.selection = selections[0]
    }
}

struct Animation6_Previews: PreviewProvider {
    static var previews: some View {
        Animation5()
    }
}
