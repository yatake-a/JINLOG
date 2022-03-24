//
//  ContentView.swift
//  JINLOG
//
//  Created by 矢竹昭博 on 2022/02/09.
//

import SwiftUI


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Row(city: "Twentynine Palms", state: "California")
                Row(city: "Port Alsworth", state: "Alaska")
                Row(city: "Skagway", state: "Alaska")
            }
        }
    }
}

struct Row: View {
    var city: String
    var state: String
    @State var buttonDidTap = (false, "")
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(city)
                .onTapGesture {
                    self.buttonDidTap = (true, self.city)
                }
            Text(state)
                .onTapGesture {
                    self.buttonDidTap = (true, self.state)
                }
            NavigationLink.init(destination: Text(buttonDidTap.1), isActive: $buttonDidTap.0) {
                EmptyView()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
