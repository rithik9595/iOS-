//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by FCI on 04/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            Image(systemName: "goforward.10")
            Image(systemName: "goforward.20")
            Image(systemName: "goforward.30")
        }
        .padding()
        VStack {
            
            Image(systemName: "goforward.10")
            Image(systemName: "goforward.20")
            Image(systemName: "goforward.30")
        }
    }
}

#Preview {
    ContentView()
}
