//
//  UserVeryfication.swift
//  Chat_App
//
//  Created by Mateusz Papież on 22/02/2023.
//

import Combine

class UserVeryfication: ObservableObject {
    @Published var isLoggedin: Bool = false
    //fales - first screen LOGIN (token)//
    
    func login() {
        self.isLoggedin = true
    }
}
