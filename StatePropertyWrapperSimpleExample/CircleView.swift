//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    // MARK: Stored Properties
    // @State is a "property wrapper"
    // "radius" is still just a property of the structure
    // The property wrapper alerts SwiftUI to the fact
    // that we want changes to this property to show in the UI.
    @State var radius: Double = 10.0
    
    // MARK: Computed Property
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User Interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .font(.title2)
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(String(format: "%.2f", radius))")
                        .font(.title2.bold())
                    Spacer()
                }
                
                // The syntax of $ says to use the propety, radius, and BIND it to this control.
                // This means when the control changes, the property's value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
            }
            
            // Output
            Text("Area:")
                .font(.title2)
            
            Text("\(String(format: "%.1f", area)) square units")
            
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
