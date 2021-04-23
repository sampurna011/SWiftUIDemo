//
//  PickerView.swift
//  SwiftUIDemo
//
//  Created by Deepu Mishra on 21/04/21.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedItem = 2
    @State private var percentage = 3
    var percentages = [10, 20, 30, 40, 50]
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select people name", selection: $selectedItem) {
                        ForEach(0..<5) {
                            Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("Segment Picker")) {
                    Picker("Select Percentage", selection: $percentage) {
                        ForEach(0..<self.percentages.count) {
                            Text("\(self.percentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("Picker View", displayMode: .inline)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
