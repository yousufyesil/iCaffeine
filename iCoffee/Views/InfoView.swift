//
//  SwiftUIView.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 21.09.23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Rectangle()
            .fill(Color(.brown))
            .cornerRadius(20)
            .frame(width: 360, height: 180)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
