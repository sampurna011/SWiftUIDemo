//
//  Button.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 22/04/21.
//

import SwiftUI

struct ButtonSample: View {
    @State private var isBeingPresent = false
    var body: some View {
        Button(action: {
            print("Edit button tapped")
            self.isBeingPresent = true
        }) {
            HStack(spacing: 10) {
                Image(systemName: "pencil")
                Text("Edit")
            }
        }
        .alert(isPresented: $isBeingPresent) {
            Alert(title:  Text("Edit"), message:  Text("Edit button tapped"), dismissButton: .default(Text("Ok")))
        }
    }
}

struct ButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSample()
    }
}
