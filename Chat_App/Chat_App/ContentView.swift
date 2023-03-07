//
//  ContentView.swift
//  Chat_App
//
//  Created by Mateusz Papież on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userVeryficate: UserVeryfication
    
    var storyset: [Story]
    
    var body: some View {
        
        NavigationView {
            
            if !userVeryficate.isLoggedin {
                LoginView()
            } else {
                DashboardView(storyset: storyset)
                    .ignoresSafeArea()
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
