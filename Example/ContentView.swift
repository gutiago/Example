//
//  ContentView.swift
//  Example
//
//  Created by Gustavo Tiago on 22/5/2024.
//

import SwiftUI
import Network
import Macros

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!").onTapGesture {

      }
    }
    .padding()
  }
} 
