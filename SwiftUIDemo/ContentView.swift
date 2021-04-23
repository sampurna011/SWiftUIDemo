//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 21/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        NavigationView {
            Form {
               // LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                TextField("Enter your name", text: $name) // $ use for binding
                Group {
                    Text("Hello, world this is first group")
                }
                Group {
                    Text("Hello, world this is second group")
                }
            }
           // .navigationBarTitle(Text("Swift UI"))
            .navigationBarTitle(Text("Swift UI"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
