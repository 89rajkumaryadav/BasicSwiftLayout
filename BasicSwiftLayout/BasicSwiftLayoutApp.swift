//
//  BasicSwiftLayoutApp.swift
//  BasicSwiftLayout
//
//  Created by Rajkumar Yadav on 8/9/22.
//



import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}





