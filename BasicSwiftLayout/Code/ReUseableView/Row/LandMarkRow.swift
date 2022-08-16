//
//  LandMarkRow.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct LandMarkRow: View {
    let landMarkMdl: LandmarkModel
    var body: some View {
        HStack{
            landMarkMdl.image
                .resizable()
                .frame(width: 80, height: 80, alignment: .leading)
                .foregroundColor(.red)
            Text(landMarkMdl.name)
                .font(.title)
            
            Spacer()
            
            if landMarkMdl.isFavorite{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
       
        LandMarkRow(landMarkMdl: ModelData().landmarks[0])
    }
}
