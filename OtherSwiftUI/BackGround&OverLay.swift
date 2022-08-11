//
//  BackGround&OverLay.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/10/22.
//

import SwiftUI

struct BackGround_OverLay: View {
    var body: some View {
        
        //It is showing background uses of SWIFTUI
       
        
        VStack {
            Spacer()
            bgOfBgTest
            Spacer()
            overLayBackground
            Spacer()
            heartNotify
            Spacer()
        }
        
       
    }
    
    var bgOfBgTest: some View{
        Text("Hello, World!")
            .fontWeight(.bold)
            .font(.title2)
            .background(alignment: .center) {
                Circle()
                    .fill(LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 200, alignment: .center)
                    
            }.background(alignment: .center) {
                Circle()
                    .fill(LinearGradient(colors: [.accentColor, .cyan], startPoint: .top, endPoint: .bottom))
                    .frame(width: 220, height: 220, alignment: .center)
            }
    }
    
    
    
    var overLayBackground: some View{
        
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay {
                Text("1")
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(.white)
            }
            .background {
                Circle()
                    .fill(.cyan)
                    .frame(width: 120, height: 120, alignment: .center)
            }
    }
    
    
    
    
    
    var heartNotify: some View{
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .frame(width: 100, height: 100, alignment: .center)
            .background {
                Circle()
                .fill(LinearGradient(colors: [.blue, .yellow], startPoint: .trailing, endPoint: .leading))
                
            }
            .shadow(radius: 10)
            .overlay(alignment: .bottomTrailing, content: {
                Circle()
                    .fill(.red)
                    .frame(width: 40, height: 40, alignment: .bottomTrailing)
                   
                    .overlay {
                        Text("5")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }.shadow(color: .black, radius: 8, x: 5, y: 6) 
            })
            
    }
    
    
}






struct BackGround_OverLay_Previews: PreviewProvider {
    static var previews: some View {
        BackGround_OverLay()
    }
}
