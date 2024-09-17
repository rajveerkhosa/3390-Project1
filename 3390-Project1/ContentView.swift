//
//  ContentView.swift
//  3390-Project1
//
//  Created by Rajveer Singh Khosa on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    /*  Declares state variable showText
        @State is used to manage
        state inside a view
        Initially set to False
        Meaning when Program Starts,
        Hello World is not Displayed
     */
    
    @State private var showText = false
    
    var body: some View {
        VStack {
            if showText {
                Text("Hello, World!")
            }
            else {
                Button(action: {
                    showText = true
                }) {
                    Text("PRESS ME")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
