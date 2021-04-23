//
//  ImageViewSample.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct ImageViewSample: View {
    var body: some View {
       Image("lead-image-105")
        .frame(width: 300, height: 300)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.green, lineWidth: 5))
        .shadow(radius: 7)
        .offset(x: 50, y: -130)
        .padding(.bottom, -130)
    }
}

struct ImageViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewSample()
    }
}
