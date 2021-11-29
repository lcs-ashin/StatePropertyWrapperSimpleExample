//
//  ContentView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius")
                .font(.title2)
            
            TextField("Radius",
                      text: .constant(""),
                      prompt: Text("e.g.: 24.5"))
            
            // Output
            Text("Area")
                .font(.title2)
            
            Text("24.0 square units")
            
            Spacer()
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
