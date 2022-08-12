//
//  LankMarkList.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct LankMarkListPage: View {
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(landmarks) { landmark in
                    NavigationLink {
                        DetailsPage(landmark: landmark)
                    } label: {
                        LandMarkRow(landMarkMdl: landmark)
                    }

                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LankMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LankMarkListPage()
    }
}






