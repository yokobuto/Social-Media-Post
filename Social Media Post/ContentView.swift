//
//  ContentView.swift
//  Social Media Post
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLiked = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(){
                Image(.post)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .cornerRadius(60)
                    .onTapGesture(count: 2) {
                        likeUnlikePosting()
                    }
            }
            
            Image (systemName: "heart")
                .symbolVariant(isLiked ? .fill : .none)
                .animation(.spring, value: isLiked)
                .imageScale(.large)
                .foregroundStyle(.red)
                .padding()
                .onTapGesture {
                    likeUnlikePosting()
                }
        }

    }
    
    func likeUnlikePosting(){
        isLiked.toggle()
    }
    
}

#Preview {
    ContentView()
}
