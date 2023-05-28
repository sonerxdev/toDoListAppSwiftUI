//
//  ContentView.swift
//  toDoListApp
//
//  Created by Soner Karaevli on 6.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding().onAppear {
            Task {
                let servicesSettings = Resource<[Product]>(url: URL.forAllProducts)
                let products = try await Webservice().load(servicesSettings)
                print(products)
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
