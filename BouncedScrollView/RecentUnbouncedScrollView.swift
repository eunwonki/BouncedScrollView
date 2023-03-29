//
//  RecentBouncedScrollView.swift
//  UnbouncedScrollView
//
//  Created by wonki on 2023/03/29.
//

import SwiftUI

struct RecentUnbouncedScrollView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0 ... 100, id: \.self) { _ in
                Color.red.frame(height: 30)
                Color.orange.frame(height: 30)
                Color.yellow.frame(height: 30)
            }
        }
        //.scrollBounceBehavior(.basedOnSize)
        
        .navigationTitle("Unbounced Scroll View (16.4)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecentUnbouncedScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecentUnbouncedScrollView()
        }
    }
}
