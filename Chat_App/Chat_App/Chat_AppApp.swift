//
//  Chat_AppApp.swift
//  Chat_App
//
//  Created by Mateusz Papież on 22/02/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore


@main
struct Chat_AppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            DashboardView(storyset: Story.allStory)
            //ContentView()
                //.environmentObject(UserVeryfication())
            //LoginView()
        }
    }
}
