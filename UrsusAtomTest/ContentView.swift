//
//  ContentView.swift
//  UrsusAtomTest
//
//  Created by Libhut Samwes on 10/21/22.
//

import SwiftUI
import UrsusAtom

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text (String(testValues.ship))
            Button("test", action: {
                testValues.loginResult
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
