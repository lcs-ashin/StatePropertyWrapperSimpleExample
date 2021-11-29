//
//  TrapezoidView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct TrapezoidView: View {
    
    // Stored Properties
    @State var baseA: Double = 10.0
    @State var baseB: Double = 10.0
    @State var height: Double = 10.0
    
    // Computed Property
    var area: Double {
        return (baseA + baseB) * height * 0.5
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Base a
            Text("Base a:")
                .font(.title2)
            
            Slider(value: $baseA,
                   in: 0.0...100.0,
                   label: {
                Text("Base a")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
            // Base b
            Text("Base b:")
                .font(.title2)
            
            Slider(value: $baseB,
                   in: 0.0...100.0,
                   label: {
                Text("Base B")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
            // Height
            Text("Height:")
                .font(.title2)
            
            Slider(value: $height,
                   in: 0.0...100.0,
                   label: {
                Text("Height")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
            // Output
            Text("Area:")
                .font(.title2)
            
            Text("\(area) square units")
            
            Spacer()
        }
        .padding()
        .navigationTitle("Trapezoid")
    }
}

struct TrapezoidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TrapezoidView()
        }
    }
}
