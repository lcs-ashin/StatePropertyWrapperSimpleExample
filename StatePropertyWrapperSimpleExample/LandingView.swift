//
//  LandingView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Eunbi Shin on 2021-11-29.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            List {
                NavigationLink(destination: {
                    CircleView()
                }, label: {
                   Text("Circle")
                })
                
                NavigationLink(destination: {
                    TrapezoidView()
                }, label: {
                   Text("Trapezoid")
                })
            }
            .foregroundColor(.black)
            .font(.title2.bold())
        }
        .navigationTitle("Figures")
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingView()
        }
    }
}
