//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    // MARK: Stored Properties
    let radius: Double = 10.0
    
    // MARK: Computed Property
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User Interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius")
                .font(.title2)
            
            TextField("Radius",
                      text: .constant("10.0"),
                      prompt: Text("e.g.: 24.5"))
            
            // Output
            Text("Area")
                .font(.title2)
            
            Text("314.16 square units")
            
            Spacer()
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
