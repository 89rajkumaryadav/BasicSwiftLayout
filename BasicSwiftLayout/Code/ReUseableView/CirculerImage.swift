//
//  CirculerImage.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/9/22.
//

import SwiftUI

struct CirculerImage: View {
    var body: some View {
        Image("GTree")
            .frame(width: 200, height: 200, alignment: .center)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,lineWidth: 4))
            .shadow(color: .black.opacity(0.4), radius: 7)
    }
}

struct CirculerImage_Previews: PreviewProvider {
    static var previews: some View {
        CirculerImage()
            
    }
}
