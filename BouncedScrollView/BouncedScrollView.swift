//
//  BouncedScrollView.swift
//  BouncedScrollView
//
//  Created by wonki on 2023/03/29.
//

import SwiftUI

struct BouncedScrollView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0 ... 100, id: \.self) { _ in
                Color.red.frame(height: 30)
                Color.orange.frame(height: 30)
                Color.yellow.frame(height: 30)
            }
        }
        
        .navigationTitle("Bounced Scroll View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BouncedScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UnbouncedScrollView()
        }
    }
}
