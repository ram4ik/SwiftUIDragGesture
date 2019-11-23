//
//  ContentView.swift
//  SwiftUIDragGesture
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var cardDragState = CGSize.zero
    
    var body: some View {
        ZStack {
            Card()
                .offset(y: self.cardDragState.height)
                .offset(x: self.cardDragState.width)
                .gesture(DragGesture().onChanged{ value in
                    self.cardDragState = value.translation}
                    .onEnded{ value in
                        self.cardDragState = CGSize.zero})
                    .animation(.spring())
                    .frame(width: 300, height: 250, alignment: .center)
            
            Card()
                .offset(y: self.cardDragState.height)
                .offset(x: self.cardDragState.width)
                .gesture(DragGesture().onChanged{ value in
                    self.cardDragState = value.translation}
                    .onEnded{ value in
                        self.cardDragState = CGSize.zero})
                    .animation(.spring())
                    .frame(width: 300, height: 250, alignment: .center)
                .rotationEffect(Angle(radians: -0.4))
                .foregroundColor(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
