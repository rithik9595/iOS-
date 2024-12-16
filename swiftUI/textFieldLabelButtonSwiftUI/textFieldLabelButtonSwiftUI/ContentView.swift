//
//  ContentView.swift
//  textFieldLabelButtonSwiftUI
//
//  Created by FCI on 05/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State var label1: String = ""
    @State var label2: String = ""
    
    
    var body: some View {
        VStack {
            //textfield  1
            TextField("Enter UserName", text: $username)
                .padding()
                .border(Color.yellow, width: 5)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10.0)
            
            
            //textfield  2
            SecureField("Enter Password", text: $password)
                .padding()
                .border(Color.yellow, width: 5)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10.0)
            
            
            //label 1
            Label(label1, systemImage: "")
                .padding()
                .border(Color.yellow, width: 5)
                .cornerRadius(5.0)
                .foregroundColor(.green)
            
            
            //label 1
            Label(label2, systemImage: "")
                .padding()
                .border(Color.yellow, width: 5)
                .cornerRadius(5.0)
                .foregroundColor(.green)
            
            //button
            Button(action: {
                label1 = username
                label2 = password
            }) {
                
                Text("touch me")
                    .font(.title)
            }
            .padding()
            .border(Color.yellow, width: 5)
            .cornerRadius(5.0)
            .foregroundColor(.green)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
