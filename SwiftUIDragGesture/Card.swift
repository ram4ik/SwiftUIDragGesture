//
//  Card.swift
//  SwiftUIDragGesture
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            HStack {
                Text("Some Cool name")
                    .font(.largeTitle)
            }
        }
        .frame(width: 300, height: 200, alignment: .center)
        .background(Color.orange)
        .cornerRadius(25)
        .shadow(radius: 25)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
