//
//  ContentView.swift
//  BouncedScrollView
//
//  Created by wonki on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(
                "Bounced ScrollView",
                destination: BouncedScrollView())
            Spacer()
            NavigationLink(
                "Unbounced ScrollView",
                destination: UnbouncedScrollView())
            Spacer()
            NavigationLink("Unbounced ScrollView (ios 16.4)", destination: RecentUnbouncedScrollView())
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
