//
//  Screen.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

import SwiftUI

struct Screen<Content: View>: View, Identifiable {
    var id: String {
        return title
    }
    
    let title: String
    let destination: Content
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
        }
    }
}

struct Screen_Previews: PreviewProvider {
    static var previews: some View {
        Screen(title: "Test", destination: Text("Test"))
    }
}
