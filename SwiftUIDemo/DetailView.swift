//
//  DetailView.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 23/04/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                MapViewSample()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                ImageViewSample()
                Text("Deepu Mishra")
                    .font(.title)
                NameView()
                Divider()
                AboutView()
            }
            .navigationBarTitle(Text("Detail"))
            .padding()
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct NameView: View {
    var body: some View {
        HStack {
            Text("Bansi Sidhhartha nagar")
                .font(.subheadline)
            Spacer()
            Text("India")
                .font(.subheadline)
            
        }
        .foregroundColor(.secondary)
    }
}
struct AboutView: View {
    var body: some View {
        Text("About Deepu Mishra")
            .font(.title2)
        Text("Descriptive text goes here.")
    }
}
