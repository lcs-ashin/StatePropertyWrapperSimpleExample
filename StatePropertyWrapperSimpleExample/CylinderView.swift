//
//  CylinderView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct CylinderView: View {
    // Stored Properties
    @State var radius: Double = 10.0
    @State var height: Double = 10.0
    
    // Computed Properties
    var area: Double {
        return Double.pi * radius * radius * 2 + 2 * Double.pi * radius * height
    }
    
    var volume: Double {
        return area * height
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Radius
            Text("Radius:")
                .font(.title2)
            
            Slider(value: $radius,
                   in: 0.0...100.0,
                   label: {
                Text("Radius")
            },
                   minimumValueLabel: {
                Text("0.0")
            }, maximumValueLabel: {
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
            }, maximumValueLabel: {
                Text("100.0")
            })
            
            // Output
            // Area
            Text("Area:")
                .font(.title2)
            
            Text("\(area) square units")
            
            // Volume
            Text("Volume:")
                .font(.title2)
            
            Text("\(volume) cube units")
            
            Spacer()
        }
        .padding()
        .navigationTitle("Cylinder")
    }
}

struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CylinderView()
        }
    }
}
