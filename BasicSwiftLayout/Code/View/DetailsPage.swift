//
//  DetailsPage.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct DetailsPage: View {
    
    var landmark: LandmarkModel
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(.all, edges: .top)
                .frame(height:250.0)
            
            CirculerImage(landmark: landmark)
                .offset(y: -120)
                .padding(.bottom,-120)
            
            VStack(alignment:.leading){
                Text(landmark.name)
                    .font(.title)
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

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(landmark: landmarks[0])
    }
}
