//
//  RandomView.swift
//  Random Chess
//
//  Created by Nicolas Bravo on 6/17/21.
//

import SwiftUI
struct RandomView: View {
    var color = "White"
    var body: some View {
        NavigationView{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action:{print("Switch Color")}) {
            Text("Randomize: " + color)
        }
        }
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
