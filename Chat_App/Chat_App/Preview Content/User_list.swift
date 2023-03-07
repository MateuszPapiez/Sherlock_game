//
//  User_list.swift
//  Chat_App
//
//  Created by Mateusz Papież on 06/03/2023.
//

import SwiftUI

struct Users_list: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image_user_list: String
    let time: String
    let city: String
}

let data: [Users_list] = [
    Users_list(name: "Wiola Bogacka", image_user_list: "user_1", time: "21:11", city: "Warszawa"),
    Users_list(name: "Adam Wolak", image_user_list: "user_2", time: "20:11", city: "Poznań"),
    Users_list(name: "Małgorzata Bogacka", image_user_list: "user_3", time: "17:11", city: "Kraków"),
    Users_list(name: "Arnold Mocny", image_user_list: "user_4", time: "16:11", city: "Gdynia"),
    Users_list(name: "Gabriela Kowalik", image_user_list: "user_5", time: "15:17", city: "Szczecin"),
    Users_list(name: "Mariusz Noga", image_user_list: "user_6", time: "13:13", city: "Bydgoszcz"),
    Users_list(name: "Martyna Kolano", image_user_list: "user_7", time: "12:18", city: "Radom"),
    Users_list(name: "Ireneusz Chmurka", image_user_list: "user_8", time: "11:36", city: "Berlin"),
    Users_list(name: "Bartosz Gąska", image_user_list: "user_9", time: "10:36", city: "Oława")
    
]

struct User_list: View {
    
    var body: some View {
        ScrollView{
            
            VStack{
                ForEach(data){ alluser in
                    HStack (){
                        Image(alluser.image_user_list)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(10)
                            .scaledToFit()
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(alluser.name)
                                .font(.system(size: 20, weight: .medium))
                            Text(alluser.city)
                                .font(.system(size: 12, weight: .light))
                        }
                        .foregroundColor(Color("Login_text"))
                        Spacer()
                        
                        VStack{
                            Text(alluser.time)
                                .foregroundColor(Color("Login_text"))
                        }
                    }
                    
                }
             
            }
           
            .padding(15)
        }
    }
}







struct User_list_Previews: PreviewProvider {
    static var previews: some View {
        User_list()
    }
}
