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
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                TextField("Enter name", text: $name)
               // LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                TextField("Enter your name", text: $name) // $ use for binding
                Group {
                    Text("Hello, world this is first group")
                }
                Group {
                    Text("Hello, world this is second group")
                        .font(.title)
                        .foregroundColor(.green)
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
