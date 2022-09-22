//
//  secondview.swift
//  Cw6part2
//
//  Created by Othman Alkous on 22/09/2022.
//

import SwiftUI

struct secondview: View {
    
    let secondbackground: Color
    let entry2: String
    
    var body: some View {
        ZStack {
                    secondbackground
                        .ignoresSafeArea()
                    
                    VStack {
                        Text(entry2)
                            .padding()
                            .font(.system(size: 40, weight: .semibold, design: .monospaced))
                    }
                }

    }
}

struct secondview_Previews: PreviewProvider {
    static var previews: some View {
        secondview(secondbackground: Color.green, entry2: "test")
    }
}
