//
//  DetailsPage.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct DetailsPage: View {
    @EnvironmentObject var modelData:ModelData
    var landmark: LandmarkModel
    
    var landMarkIndex :Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id } )!
    }
    var body: some View {
       
            VStack{
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(.all, edges: .top)
                    .frame(height:150.0)
                
                CirculerImage(landmark: landmark)
                    .offset(y: -120)
                    .padding(.bottom,-120)
                ScrollView{
                VStack(alignment:.leading){
                    HStack{
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                    }
                    HStack{
                        Text(landmark.park)
                            
                        Spacer()
                        Text(landmark.state)
                    }.font(.subheadline)
                        .foregroundColor(.secondary)
                    Divider()
                    VStack(alignment: .leading){
                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                }.padding()
                
              Spacer()
            }
        }
        
    }
}



struct FavoriteButton: View{
    @Binding var isSet:Bool
    var body: some View{
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }

    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(landmark: ModelData().landmarks[0])
    }
}






