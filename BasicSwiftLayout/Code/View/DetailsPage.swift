//
//  DetailsPage.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/11/22.
//

import SwiftUI

struct DetailsPage: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(.all, edges: .top)
                .frame(height: 300.0)
            
            CirculerImage()
                .offset(y: -120)
                .padding(.bottom,-120)
            
            VStack(alignment:.leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        
                    Spacer()
                    Text("California")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                VStack(alignment: .leading){
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }
            }.padding()
            
          Spacer()
        }
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage()
    }
}
