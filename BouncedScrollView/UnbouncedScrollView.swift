//
//  UnbouncedScrollView.swift
//  BouncedScrollView
//
//  Created by wonki on 2023/03/29.
//

import SwiftUI

struct UnbouncedScrollView: View {
    @Environment(\.dismiss) var dismiss
    func customDismiss() {
        UIScrollView.appearance().bounces = true
        dismiss()
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0 ... 100, id: \.self) { _ in
                Color.red.frame(height: 30)
                Color.orange.frame(height: 30)
                Color.yellow.frame(height: 30)
            }
        }
        
        .navigationTitle("Unbounced Scroll View")
        .navigationBarTitleDisplayMode(.inline)
        
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("< Back", action: customDismiss)
            }
        }
        
        .onAppear {
            UIScrollView.appearance().bounces = false
        }
        
        .onDisappear {
            UIScrollView.appearance().bounces = true
        }
    }
}

struct UnbouncedScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UnbouncedScrollView()
        }
    }
}
