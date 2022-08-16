//
//  BasicSwiftLayoutApp.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/9/22.
//

import SwiftUI

@main
struct BasicSwiftLayoutApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
           
            LankMarkListPage().environmentObject(modelData)
        }
    }
}






