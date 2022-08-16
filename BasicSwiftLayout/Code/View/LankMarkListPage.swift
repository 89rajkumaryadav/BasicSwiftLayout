//
//  LankMarkList.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct LankMarkListPage: View {
    
    @EnvironmentObject var modelData:ModelData
    
    
    var body: some View {
        NavigationView{
            List {
                HStack{
                    
                    Toggle(isOn: $modelData.isShowFavorite) {
                        Text("Favorites Only")
                    }
                }
                ForEach(modelData.filteredLandMark) { landmark in
                    
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
        LankMarkListPage().environmentObject(ModelData())
    }
}






