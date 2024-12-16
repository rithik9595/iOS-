//
//  ContentView.swift
//  NavigationControlle
//
//  Created by FCI on 09/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            //Text("Welcome")
            NavigationLink("Navigate"){
                Text("Screen2")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
